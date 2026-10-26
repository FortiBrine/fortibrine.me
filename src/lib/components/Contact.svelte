<script lang="ts">
	import SectionLabel from '#lib/components/SectionLabel.svelte';

	type Social = { name: string; url: string; img?: string; icon?: string };

	const socials: Social[] = [
		{ name: 'GitHub', img: '/icons/github.svg', url: 'https://github.com/FortiBrine' }
	];
</script>

<section id="contact" class="relative py-32">
	<!-- Bottom glow -->
	<div
		class="absolute bottom-0 left-1/2 -z-10 h-64 w-[600px] -translate-x-1/2 rounded-full bg-violet-600/10 blur-3xl"
	></div>

	<div class="container mx-auto max-w-3xl px-6 text-center">
		<SectionLabel text="Contact" />
		<h2 class="mt-4 mb-6 text-4xl font-bold text-white sm:text-5xl">
			Let's work <span
				class="bg-gradient-to-r from-violet-400 to-cyan-400 bg-clip-text text-transparent"
				>together</span
			>
		</h2>
		<p class="mb-12 text-lg leading-relaxed text-slate-400">
			I'm currently open to freelance projects and full-time opportunities. If you have an
			interesting project or a role that might be a good fit, reach out — I'd love to chat.
		</p>

		<!-- Email CTA -->
		<a
			href="mailto:contact@fortibrine.me"
			class="group mb-16 inline-flex items-center gap-3 rounded-2xl bg-gradient-to-r from-violet-600 to-indigo-600 px-8 py-5 text-lg font-semibold text-white transition-all duration-300 hover:scale-105 hover:shadow-2xl hover:shadow-violet-500/25"
		>
			<svg class="h-5 w-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
				<path
					stroke-linecap="round"
					stroke-linejoin="round"
					stroke-width="2"
					d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"
				/>
			</svg>
			contact@fortibrine.me
		</a>

		<!-- Social links -->
		<div class="flex flex-wrap justify-center gap-4">
			{#each socials as social (social.name)}
				<a
					href={social.url}
					target="_blank"
					rel="noopener noreferrer"
					class="group flex items-center gap-2.5 rounded-xl border border-white/8 bg-white/3 px-5 py-3 text-sm font-medium text-slate-400 transition-all duration-300 hover:scale-105 hover:border-white/20 hover:bg-white/8 hover:text-white"
				>
					{#if social.img}
						<img
							src={social.img}
							alt={social.name}
							class="h-5 w-5 object-contain opacity-70 invert transition-opacity duration-300 group-hover:opacity-100"
						/>
					{:else}
						<span class="text-lg">{social.icon}</span>
					{/if}
					{social.name}
				</a>
			{/each}
		</div>
	</div>
</section>
