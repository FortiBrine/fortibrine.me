<script lang="ts">
	let scrolled = $state(false);
	let mobileOpen = $state(false);

	const navItems = [
		{ href: '#home', label: 'Home' },
		{ href: '#about', label: 'About' },
		{ href: '#skills', label: 'Skills' },
		{ href: '#projects', label: 'Projects' },
		{ href: '#contact', label: 'Contact' }
	];

	$effect(() => {
		const onScroll = () => {
			scrolled = window.scrollY > 20;
		};
		window.addEventListener('scroll', onScroll, { passive: true });
		return () => window.removeEventListener('scroll', onScroll);
	});
</script>

<header
	class="fixed top-0 right-0 left-0 z-50 transition-all duration-300 {scrolled
		? 'border-b border-white/5 bg-slate-950/80 shadow-xl shadow-black/20 backdrop-blur-md'
		: 'bg-transparent'}"
>
	<nav class="container mx-auto flex h-16 max-w-6xl items-center justify-between px-6">
		<!-- Logo -->
		<a href="#home" class="text-xl font-bold tracking-tight text-white">
			fortibrine<span class="text-violet-400">.</span>me
		</a>

		<!-- Desktop nav -->
		<ul class="hidden items-center gap-1 md:flex">
			{#each navItems as item (item.href)}
				<li>
					<a
						href={item.href}
						class="rounded-lg px-4 py-2 text-sm font-medium text-slate-400 transition-all duration-200 hover:bg-white/5 hover:text-white"
					>
						{item.label}
					</a>
				</li>
			{/each}
		</ul>

		<!-- CTA -->
		<a
			href="#contact"
			class="hidden items-center rounded-lg border border-white/10 bg-white/5 px-5 py-2 text-sm font-medium text-white transition-all duration-200 hover:border-white/20 hover:bg-white/10 md:inline-flex"
		>
			Hire me
		</a>

		<!-- Mobile menu button -->
		<button
			type="button"
			class="rounded-lg p-2 text-slate-400 transition-colors hover:bg-white/5 hover:text-white md:hidden"
			onclick={() => (mobileOpen = !mobileOpen)}
			aria-label="Toggle menu"
		>
			{#if !mobileOpen}
				<svg class="h-5 w-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
					<path
						stroke-linecap="round"
						stroke-linejoin="round"
						stroke-width="2"
						d="M4 6h16M4 12h16M4 18h16"
					/>
				</svg>
			{:else}
				<svg class="h-5 w-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
					<path
						stroke-linecap="round"
						stroke-linejoin="round"
						stroke-width="2"
						d="M6 18L18 6M6 6l12 12"
					/>
				</svg>
			{/if}
		</button>
	</nav>

	<!-- Mobile menu -->
	{#if mobileOpen}
		<div class="border-t border-white/5 bg-slate-950/95 backdrop-blur-md md:hidden">
			<div class="container mx-auto flex flex-col gap-1 px-6 py-4">
				{#each navItems as item (item.href)}
					<a
						href={item.href}
						class="rounded-lg px-4 py-3 text-sm font-medium text-slate-400 transition-all hover:bg-white/5 hover:text-white"
						onclick={() => (mobileOpen = false)}
					>
						{item.label}
					</a>
				{/each}
				<a
					href="#contact"
					class="mt-2 rounded-lg border border-white/10 bg-white/5 px-4 py-3 text-center text-sm font-medium text-white transition-all hover:bg-white/10"
					onclick={() => (mobileOpen = false)}
				>
					Hire me
				</a>
			</div>
		</div>
	{/if}
</header>
