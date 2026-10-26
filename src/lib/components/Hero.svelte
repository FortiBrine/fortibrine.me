<section id="home" class="relative flex min-h-screen items-center justify-center overflow-hidden">
	<!-- Background gradient blobs -->
	<div class="absolute inset-0 -z-10">
		<div
			class="absolute top-1/4 left-1/4 h-96 w-96 animate-pulse rounded-full bg-violet-600/20 blur-3xl"
		></div>
		<div
			class="absolute right-1/4 bottom-1/4 h-80 w-80 animate-pulse rounded-full bg-cyan-500/15 blur-3xl delay-1000"
		></div>
		<div
			class="absolute top-1/2 left-1/2 h-[600px] w-[600px] -translate-x-1/2 -translate-y-1/2 rounded-full bg-indigo-600/10 blur-3xl"
		></div>
	</div>

	<div class="container mx-auto px-6 text-center">
		<!-- Availability badge -->
		<div
			class="mb-8 inline-flex items-center gap-2 rounded-full border border-white/10 bg-white/5 px-4 py-2 text-sm text-slate-400 backdrop-blur-sm"
		>
			<span class="h-2 w-2 animate-pulse rounded-full bg-emerald-400"></span>
			Available for freelance work
		</div>

		<!-- Name -->
		<h1 class="mb-6 text-5xl font-bold tracking-tight sm:text-7xl lg:text-8xl">
			<span class="text-white">Hi, I'm </span>
			<span
				class="bg-gradient-to-r from-violet-400 via-cyan-400 to-indigo-400 bg-clip-text text-transparent"
			>
				FortiBrine
			</span>
		</h1>

		<!-- Tagline -->
		<p class="mx-auto mb-4 max-w-2xl text-xl leading-relaxed text-slate-400 sm:text-2xl">
			Backend Developer
		</p>
		<p class="mx-auto mb-12 max-w-xl text-base text-slate-500 sm:text-lg">
			I build high-performance backend services, scalable APIs, and custom Minecraft server
			software.
		</p>

		<!-- CTA Buttons -->
		<div class="flex flex-col items-center justify-center gap-4 sm:flex-row">
			<a
				href="#projects"
				class="group relative inline-flex items-center gap-2 rounded-xl bg-gradient-to-r from-violet-600 to-indigo-600 px-8 py-4 text-base font-semibold text-white transition-all duration-300 hover:scale-105 hover:shadow-lg hover:shadow-violet-500/30"
			>
				View Projects
				<svg
					class="h-4 w-4 transition-transform group-hover:translate-x-1"
					fill="none"
					stroke="currentColor"
					viewBox="0 0 24 24"
				>
					<path
						stroke-linecap="round"
						stroke-linejoin="round"
						stroke-width="2"
						d="M17 8l4 4m0 0l-4 4m4-4H3"
					/>
				</svg>
			</a>
			<a
				href="#contact"
				class="inline-flex items-center gap-2 rounded-xl border border-white/10 bg-white/5 px-8 py-4 text-base font-semibold text-white backdrop-blur-sm transition-all duration-300 hover:scale-105 hover:border-white/20 hover:bg-white/10"
			>
				Contact Me
			</a>
		</div>

		<!-- Scroll indicator -->
		<div
			class="absolute bottom-10 left-1/2 flex -translate-x-1/2 flex-col items-center gap-2 text-slate-600"
		>
			<span class="text-xs tracking-widest uppercase">Scroll</span>
			<div class="h-12 w-px animate-bounce bg-gradient-to-b from-slate-600 to-transparent"></div>
		</div>
	</div>
</section>
