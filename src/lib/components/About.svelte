<script lang="ts">
	import SectionLabel from '#lib/components/SectionLabel.svelte';

	const facts = [
		{ icon: '📍', label: 'Location', value: 'Ukraine' },
		{ icon: '💻', label: 'Focus', value: 'Backend & Systems' },
		{ icon: '⚙️', label: 'Stack', value: 'Java / Kotlin / Go' },
		{ icon: '🎮', label: 'Specialty', value: 'Minecraft Servers' }
	];
</script>

<section id="about" class="relative py-32">
	<div class="container mx-auto max-w-6xl px-6">
		<SectionLabel text="About Me" />

		<div class="mt-12 grid items-center gap-16 lg:grid-cols-2">
			<!-- Terminal card -->
			<div class="relative flex justify-center">
				<div class="relative w-72 sm:w-80">
					<!-- Glow border -->
					<div
						class="rounded-2xl bg-gradient-to-br from-violet-600 to-cyan-500 p-px shadow-2xl shadow-violet-500/20"
					>
						<div class="overflow-hidden rounded-2xl bg-slate-950">
							<!-- Terminal titlebar -->
							<div class="flex items-center gap-2 border-b border-white/5 bg-white/5 px-4 py-3">
								<span class="h-3 w-3 rounded-full bg-red-500/70"></span>
								<span class="h-3 w-3 rounded-full bg-yellow-500/70"></span>
								<span class="h-3 w-3 rounded-full bg-emerald-500/70"></span>
								<span class="ml-2 font-mono text-xs text-slate-500">~/fortibrine</span>
							</div>
							<!-- Terminal body -->
							<div class="space-y-2 p-5 font-mono text-xs select-none sm:text-sm">
								<div>
									<span class="text-violet-400">❯</span>
									<span class="text-slate-300"> whoami</span>
								</div>
								<div class="pl-3 text-cyan-400">FortiBrine</div>
								<div class="mt-1">
									<span class="text-violet-400">❯</span>
									<span class="text-slate-300"> cat stack.txt</span>
								</div>
								<div class="space-y-1 pl-3 text-slate-400">
									<div><span class="text-emerald-400">lang</span>: Java, Kotlin, Go</div>
									<div><span class="text-emerald-400">api</span>: REST, gRPC</div>
									<div><span class="text-emerald-400">db</span>: PostgreSQL, MongoDB</div>
									<div><span class="text-emerald-400">mc</span>: Paper, Velocity, NMS</div>
								</div>
								<div class="mt-1">
									<span class="text-violet-400">❯</span>
									<span class="text-slate-300"> uptime</span>
								</div>
								<div class="pl-3 text-cyan-400">4+ years experience</div>
								<div class="mt-1 flex items-center gap-1">
									<span class="text-violet-400">❯</span>
									<span class="ml-1 h-4 w-2 animate-pulse rounded-sm bg-violet-400"></span>
								</div>
							</div>
						</div>
					</div>
					<!-- Floating badge -->
					<div
						class="absolute -right-4 -bottom-4 rounded-xl border border-white/10 bg-white/5 px-4 py-2 text-sm text-slate-300 backdrop-blur-sm"
					>
						<span class="font-semibold text-violet-400">4+</span> Years Experience
					</div>
				</div>
			</div>

			<!-- Bio text -->
			<div>
				<h2 class="mb-6 text-4xl leading-tight font-bold text-white sm:text-5xl">
					Building scalable
					<span class="bg-gradient-to-r from-violet-400 to-cyan-400 bg-clip-text text-transparent"
						>backend</span
					>
					systems
				</h2>
				<p class="mb-6 text-lg leading-relaxed text-slate-400">
					I'm a backend-focused developer specializing in Java, Kotlin, and Go. I build
					high-performance services, APIs, and distributed systems with a focus on reliability and
					clean architecture.
				</p>
				<p class="mb-8 text-lg leading-relaxed text-slate-400">
					I also develop custom Minecraft server software and plugins using Spigot, Paper, and
					Velocity, working directly with NMS, ProtocolLib, and network internals. Outside backend
					work, I enjoy building modern interfaces with React, Vue, and TypeScript.
				</p>

				<!-- Quick facts -->
				<div class="grid grid-cols-2 gap-4">
					{#each facts as fact (fact.label)}
						<div class="flex items-center gap-3">
							<span class="text-xl">{fact.icon}</span>
							<div>
								<div class="text-sm font-medium text-white">{fact.label}</div>
								<div class="text-xs text-slate-500">{fact.value}</div>
							</div>
						</div>
					{/each}
				</div>
			</div>
		</div>
	</div>
</section>
