<script lang="ts">
  import { page } from '$app/stores';
</script>

<img src={`https://http.cat/${$page.status}`} alt="HTTP Cat" />
<div class="row">
  <a href="https://zephrynis.me/">Portfolio</a>
  <a href="https://github.com/zephrynis">GitHub</a>
  <a href="mailto:{$page.url.hostname}@zephrynis.me">Contact</a>
</div>