<script lang="ts">
	import SectionLabel from '#lib/components/SectionLabel.svelte';
	import ProjectCard from '#lib/components/ProjectCard.svelte';

	type Project = {
		emoji: string;
		title: string;
		description: string;
		technologies: string[];
		github?: string;
	};

	const projects: Project[] = [
		{
			emoji: '🎬',
			title: 'ClipHarborBot - Video Downloader Telegram Bot',
			description:
				'A Telegram bot that downloads videos from TikTok, YouTube, Instagram and more directly into your chat. Features webhook architecture, multi-language support, and PostgreSQL persistence.',
			technologies: [
				'Go',
				'Telegram Bot API',
				'PostgreSQL',
				'Docker',
				'yt-dlp',
				'Cloudflare Tunnel'
			],
			github: 'https://github.com/FortiBrine/ClipHarborBot'
		},
		{
			emoji: '💰',
			title: 'CryptoVault - Cryptocurrency Trading Plugin',
			description:
				'A Minecraft plugin that brings cryptocurrency trading to your server. Buy, sell, and manage virtual cryptocurrencies with real-time prices, integrated with Vault economy and PlaceholderAPI support.',
			technologies: ['Java', 'Paper/Spigot', 'Gradle', 'ORMLite', 'Vault API', 'PlaceholderAPI'],
			github: 'https://github.com/FortiBrine/CryptoVault'
		},
		{
			emoji: '📚',
			title: 'LearningApp - Education Platform',
			description:
				'A cross-platform mobile learning application connecting teachers and students. Schedule lessons, rate tutors, chat in real-time, and manage multiple subjects with an intuitive interface.',
			technologies: [
				'React Native',
				'TypeScript',
				'Expo',
				'Spring Boot',
				'Kotlin',
				'WebSocket',
				'i18n',
				'PostgreSQL'
			],
			github: 'https://github.com/FortiBrine/learning-app'
		}
	];
</script>

<section id="projects" class="relative py-32">
	<div class="container mx-auto max-w-6xl px-6">
		<SectionLabel text="Projects" />
		<div class="mt-4 mb-16 flex flex-col gap-4 sm:flex-row sm:items-end sm:justify-between">
			<div>
				<h2 class="mb-3 text-4xl font-bold text-white sm:text-5xl">
					Things I've <span
						class="bg-gradient-to-r from-violet-400 to-cyan-400 bg-clip-text text-transparent"
						>built</span
					>
				</h2>
				<p class="max-w-lg text-lg text-slate-400">
					A selection of projects I'm proud of — ranging from Minecraft plugins to open-source tools
					and libraries.
				</p>
			</div>
			<a
				href="https://github.com/FortiBrine"
				target="_blank"
				rel="noopener noreferrer"
				class="inline-flex shrink-0 items-center gap-2 text-sm text-slate-400 transition-colors hover:text-white"
			>
				View all on GitHub
				<svg class="h-4 w-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
					<path
						stroke-linecap="round"
						stroke-linejoin="round"
						stroke-width="2"
						d="M17 8l4 4m0 0l-4 4m4-4H3"
					/>
				</svg>
			</a>
		</div>

		<div class="grid gap-6 md:grid-cols-2 lg:grid-cols-3">
			{#each projects as project (project.title)}
				<ProjectCard {project} />
			{/each}
		</div>
	</div>
</section>
