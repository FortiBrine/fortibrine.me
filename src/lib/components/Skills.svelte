<script lang="ts">
	import { asset } from '$app/paths';
	import type { AssetPath } from '$app/types';
	import SectionLabel from '#lib/components/SectionLabel.svelte';

	type Skill = { name: string; glow: string; img?: AssetPath; icon?: string };
	type SkillCategory = { name: string; skills: Skill[] };

	const skillCategories: SkillCategory[] = [
		{
			name: 'Backend',
			skills: [
				{ name: 'Java', img: 'icons/java.svg', glow: 'hover:shadow-orange-500/10' },
				{ name: 'Kotlin', img: 'icons/kotlin.svg', glow: 'hover:shadow-purple-500/10' },
				{ name: 'Go', img: 'icons/go.svg', glow: 'hover:shadow-cyan-500/10' },
				{ name: 'Spring Boot', img: 'icons/springboot.svg', glow: 'hover:shadow-green-500/10' },
				{
					name: 'PostgreSQL',
					img: 'icons/postgresql.svg',
					glow: 'hover:shadow-blue-500/10'
				},
				{ name: 'MongoDB', img: 'icons/mongodb.svg', glow: 'hover:shadow-green-500/10' },
				{ name: 'Maven', img: 'icons/apachemaven.svg', glow: 'hover:shadow-red-500/10' },
				{ name: 'Gradle', img: 'icons/gradle.svg', glow: 'hover:shadow-emerald-500/10' }
			]
		},
		{
			name: 'Frontend',
			skills: [
				{ name: 'TypeScript', img: 'icons/typescript.svg', glow: 'hover:shadow-blue-500/10' },
				{ name: 'React', img: 'icons/react.svg', glow: 'hover:shadow-cyan-500/10' },
				{ name: 'Vue.js', img: 'icons/vuedotjs.svg', glow: 'hover:shadow-emerald-500/10' }
			]
		},
		{
			name: 'DevOps & Tools',
			skills: [
				{ name: 'Linux', img: 'icons/linux.svg', glow: 'hover:shadow-slate-400/10' },
				{ name: 'Git', img: 'icons/git.svg', glow: 'hover:shadow-orange-500/10' },
				{ name: 'Podman', img: 'icons/podman.svg', glow: 'hover:shadow-purple-500/10' },
				{
					name: 'Cloudflare Tunnel',
					img: 'icons/cloudflare.svg',
					glow: 'hover:shadow-orange-500/10'
				}
			]
		},
		{
			name: 'Minecraft Development',
			skills: [
				{ name: 'Spigot', icon: '🧩', glow: 'hover:shadow-orange-500/10' },
				{ name: 'Paper', icon: '🧩', glow: 'hover:shadow-gray-400/10' },
				{ name: 'BungeeCord', icon: '🧩', glow: 'hover:shadow-purple-500/10' },
				{ name: 'Velocity', icon: '🧩', glow: 'hover:shadow-yellow-500/10' },
				{ name: 'ProtocolLib', icon: '🧩', glow: 'hover:shadow-blue-500/10' },
				{ name: 'PlaceholderAPI', icon: '🧩', glow: 'hover:shadow-green-500/10' },
				{ name: 'NMS', icon: '🧩', glow: 'hover:shadow-red-500/10' },
				{ name: 'NBT Tags', icon: '🧩', glow: 'hover:shadow-indigo-500/10' }
			]
		},
		{
			name: 'Libraries',
			skills: [
				{ name: 'Lombok', icon: '🧩', glow: 'hover:shadow-pink-500/10' },
				{ name: 'Guava', icon: '🧩', glow: 'hover:shadow-green-500/10' },
				{ name: 'Gson', icon: '🧩', glow: 'hover:shadow-red-500/10' },
				{ name: 'Kryonetty', icon: '🧩', glow: 'hover:shadow-cyan-500/10' },
				{ name: 'ORMLite', icon: '🧩', glow: 'hover:shadow-blue-500/10' },
				{ name: 'Dagger', icon: '🧩', glow: 'hover:shadow-red-500/10' },
				{ name: 'SnakeYAML', icon: '🧩', glow: 'hover:shadow-yellow-500/10' },
				{ name: 'Kotlin Serialization', icon: '🧩', glow: 'hover:shadow-purple-500/10' },
				{ name: 'Kaml', icon: '🧩', glow: 'hover:shadow-indigo-500/10' },
				{ name: 'Koin', icon: '🧩', glow: 'hover:shadow-blue-500/10' }
			]
		}
	];
</script>

<section id="skills" class="relative py-32">
	<!-- Subtle background grid -->
	<div
		class="absolute inset-0 -z-10 bg-[linear-gradient(to_right,#ffffff06_1px,transparent_1px),linear-gradient(to_bottom,#ffffff06_1px,transparent_1px)] bg-[size:4rem_4rem]"
	></div>

	<div class="container mx-auto max-w-6xl px-6">
		<SectionLabel text="Tech Stack" />
		<h2 class="mt-4 mb-4 text-4xl font-bold text-white sm:text-5xl">
			Tools I <span
				class="bg-gradient-to-r from-violet-400 to-cyan-400 bg-clip-text text-transparent"
				>work with</span
			>
		</h2>
		<p class="mb-16 max-w-xl text-lg text-slate-400">
			A curated set of technologies I use to build fast, reliable, and beautiful products.
		</p>

		<!-- Category groups -->
		<div class="space-y-12">
			{#each skillCategories as category (category.name)}
				<div>
					<h3 class="mb-6 text-xs font-semibold tracking-widest text-slate-500 uppercase">
						{category.name}
					</h3>
					<div class="grid grid-cols-2 gap-4 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-6">
						{#each category.skills as skill (skill.name)}
							<div
								class="group flex cursor-default flex-col items-center gap-3 rounded-xl border border-white/5 bg-white/3 p-5 backdrop-blur-sm transition-all duration-300 hover:scale-105 hover:border-white/15 hover:bg-white/8 hover:shadow-lg {skill.glow}"
							>
								{#if skill.img}
									<img
										src={asset(skill.img)}
										alt={skill.name}
										class="h-8 w-8 object-contain opacity-80 invert transition-transform duration-300 group-hover:scale-110 group-hover:opacity-100"
									/>
								{:else}
									<span class="text-3xl transition-transform duration-300 group-hover:scale-110">
										{skill.icon}
									</span>
								{/if}
								<span class="text-center text-sm font-medium text-slate-300">{skill.name}</span>
							</div>
						{/each}
					</div>
				</div>
			{/each}
		</div>
	</div>
</section>
