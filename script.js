document.getElementById('add-link-form').addEventListener('submit', async (e) => {
  e.preventDefault();
  const name = document.getElementById('link-name').value;
  const url = document.getElementById('link-url').value;

  await fetch('/api/links', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ name, url })
  });

  loadLinks();
});

document.getElementById('start-check').addEventListener('click', async () => {
  await fetch('/api/check/start', { method: 'POST' });
});

document.getElementById('stop-check').addEventListener('click', async () => {
  await fetch('/api/check/stop', { method: 'POST' });
});

async function loadLinks() {
  const res = await fetch('/api/links');
  const links = await res.json();
  const tbody = document.querySelector('#links-table tbody');
  tbody.innerHTML = links.map(link => `
    <tr>
      <td>${link.name}</td>
      <td>${link.url}</td>
      <td>${link.status}</td>
    </tr>
  `).join('');
}

loadLinks();
