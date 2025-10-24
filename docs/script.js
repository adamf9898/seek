(function () {
  const listEl = document.getElementById('doc-list');
  const searchEl = document.getElementById('search');
  const emptyEl = document.getElementById('empty');

  /** @type {{title:string, source:string, doc:string}[]} */
  let manifest = [];
  let filtered = [];

  function render(items) {
    listEl.innerHTML = '';
    if (items.length === 0) {
      emptyEl.classList.remove('hidden');
      return;
    }
    emptyEl.classList.add('hidden');

    for (const item of items) {
      const li = document.createElement('li');
      li.className = 'doc-item';

      const title = document.createElement('h3');
      title.className = 'doc-title';
      title.textContent = item.title;

      const src = document.createElement('div');
      src.className = 'doc-source';
      src.textContent = item.source;

      const link = document.createElement('a');
      link.href = '../' + item.doc.replace(/^docs\//, '');
      link.className = 'doc-link';
      link.textContent = 'Open documentation';

      li.appendChild(title);
      li.appendChild(src);
      li.appendChild(link);
      listEl.appendChild(li);
    }
  }

  function applyFilter(q) {
    const needle = q.trim().toLowerCase();
    if (!needle) {
      filtered = manifest.slice();
    } else {
      filtered = manifest.filter(m =>
        m.title.toLowerCase().includes(needle) ||
        m.source.toLowerCase().includes(needle)
      );
    }
    render(filtered);
  }

  async function init() {
    try {
      const res = await fetch('manifest.json', { cache: 'no-cache' });
      if (!res.ok) throw new Error(`Failed to load manifest: ${res.status}`);
      manifest = await res.json();
      applyFilter('');
    } catch (err) {
      console.error(err);
      emptyEl.textContent = 'Failed to load manifest.json';
      emptyEl.classList.remove('hidden');
    }
  }

  searchEl.addEventListener('input', (e) => applyFilter(e.target.value));
  init();
})();