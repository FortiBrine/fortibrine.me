<script lang="ts">
	import Navbar from '#lib/components/Navbar.svelte';
	import Hero from '#lib/components/Hero.svelte';
	import About from '#lib/components/About.svelte';
	import Skills from '#lib/components/Skills.svelte';
	import Projects from '#lib/components/Projects.svelte';
	import Contact from '#lib/components/Contact.svelte';
	import Footer from '#lib/components/Footer.svelte';
</script>

<svelte:head>
	<title>FortiBrine</title>
	<meta
		name="description"
		content="FortiBrine portfolio: backend developer, Java, Kotlin, Go, APIs and Minecraft server development."
	/>
	<meta name="robots" content="index, follow" />
	<link rel="canonical" href="https://fortibrine.me/" />
</svelte:head>

<div class="min-h-screen bg-slate-950 text-white antialiased">
	<Navbar />
	<main>
		<Hero />
		<About />
		<Skills />
		<Projects />
		<Contact />
	</main>
	<Footer />
</div>
