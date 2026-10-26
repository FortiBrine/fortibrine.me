<script lang="ts">
	type Project = {
		emoji: string;
		title: string;
		description: string;
		technologies: string[];
		github?: string;
	};

	let { project }: { project: Project } = $props();
</script>

<div
	class="group relative flex flex-col overflow-hidden rounded-2xl border border-white/8 bg-white/3 backdrop-blur-sm transition-all duration-300 hover:-translate-y-1 hover:border-white/15 hover:bg-white/6 hover:shadow-xl hover:shadow-black/30"
>
	<!-- Top gradient bar -->
	<div class="h-px w-full bg-gradient-to-r from-transparent via-violet-500/50 to-transparent"></div>

	<!-- Card body -->
	<div class="flex flex-1 flex-col p-6">
		<!-- Header row -->
		<div class="mb-4 flex items-start justify-between">
			<span class="text-4xl">{project.emoji}</span>
			{#if project.github}
				<a
					href={project.github}
					target="_blank"
					rel="noopener noreferrer"
					class="flex items-center gap-1.5 rounded-lg border border-white/8 bg-white/5 px-3 py-1.5 text-xs font-medium text-slate-400 transition-all duration-200 hover:border-white/20 hover:bg-white/10 hover:text-white"
					aria-label="View on GitHub"
				>
					<svg class="h-3.5 w-3.5" fill="currentColor" viewBox="0 0 24 24">
						<path
							d="M12 0C5.37 0 0 5.37 0 12c0 5.31 3.435 9.795 8.205 11.385.6.105.825-.255.825-.57 0-.285-.015-1.23-.015-2.235-3.015.555-3.795-.735-4.035-1.41-.135-.345-.72-1.41-1.23-1.695-.42-.225-1.02-.78-.015-.795.945-.015 1.62.87 1.845 1.23 1.08 1.815 2.805 1.305 3.495.99.105-.78.42-1.305.765-1.605-2.67-.3-5.46-1.335-5.46-5.925 0-1.305.465-2.385 1.23-3.225-.12-.3-.54-1.53.12-3.18 0 0 1.005-.315 3.3 1.23.96-.27 1.98-.405 3-.405s2.04.135 3 .405c2.295-1.56 3.3-1.23 3.3-1.23.66 1.65.24 2.88.12 3.18.765.84 1.23 1.905 1.23 3.225 0 4.605-2.805 5.625-5.475 5.925.435.375.81 1.095.81 2.22 0 1.605-.015 2.895-.015 3.3 0 .315.225.69.825.57A12.02 12.02 0 0 0 24 12c0-6.63-5.37-12-12-12z"
						/>
					</svg>
					GitHub
				</a>
			{/if}
		</div>

		<!-- Title & description -->
		<h3 class="mb-2 text-lg leading-snug font-semibold text-white">{project.title}</h3>
		<p class="mb-5 flex-1 text-sm leading-relaxed text-slate-400">{project.description}</p>

		<!-- Tech tags -->
		<div class="flex flex-wrap gap-2">
			{#each project.technologies as tech (tech)}
				<span
					class="rounded-md border border-white/8 bg-white/5 px-2.5 py-1 font-mono text-xs text-slate-400"
				>
					{tech}
				</span>
			{/each}
		</div>
	</div>
</div>
