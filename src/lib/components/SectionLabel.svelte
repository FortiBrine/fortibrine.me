<script lang="ts">
	let { text }: { text: string } = $props();
</script>

<div class="inline-flex items-center gap-2">
	<div class="h-px w-8 bg-gradient-to-r from-violet-500 to-transparent"></div>
	<span class="text-xs font-semibold tracking-widest text-violet-400 uppercase">{text}</span>
</div>
