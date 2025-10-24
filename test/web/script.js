// Minimal modular loader and expand/collapse interactions
import dataUrl from './data.json' assert { type: 'json' };

const container = document.getElementById('principles');
const template = document.getElementById('card-template');

function createCard(item){
  const node = template.content.cloneNode(true);
  const article = node.querySelector('.card');
  const title = node.querySelector('.card-title');
  const btn = node.querySelector('.toggle');
  const body = node.querySelector('.card-body');
  const ref = node.querySelector('.reference');
  const verse = node.querySelector('.verse');
  const appsList = node.querySelector('.apps-list');

  title.textContent = item.name;
  ref.textContent = `${item.reference}`;
  verse.textContent = item.verse;
  item.apps.forEach(a=>{
    const li = document.createElement('li');
    li.textContent = a;
    appsList.appendChild(li);
  });

  function setExpanded(exp){
    article.setAttribute('aria-expanded', exp ? 'true' : 'false');
    btn.textContent = exp ? '−' : '+';
    if(exp){ body.hidden = false; article.focus(); } else { body.hidden = true; }
  }

  btn.addEventListener('click', e=>{
    e.stopPropagation();
    setExpanded(article.getAttribute('aria-expanded') !== 'true');
  });

  article.addEventListener('click', ()=>{
    setExpanded(article.getAttribute('aria-expanded') !== 'true');
  });

  article.addEventListener('keydown', e=>{
    if(e.key === 'Enter' || e.key === ' '){
      e.preventDefault();
      setExpanded(article.getAttribute('aria-expanded') !== 'true');
    } else if(e.key === 'Escape'){
      setExpanded(false);
    }
  });

  return node;
}

function render(data){
  container.innerHTML = '';
  data.principles.forEach(p=>{
    container.appendChild(createCard(p));
  });
}

/* If browser doesn't support JSON module import, fallback to fetch */
(async function init(){
  try{
    render(dataUrl);
  }catch{
    const res = await fetch('data.json');
    const json = await res.json();
    render(json);
  }
})();
