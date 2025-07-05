<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SwiftPack - Software de Optimización Avanzada</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="style.css">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap');
        
        body {
            font-family: 'Inter', sans-serif;
            scroll-behavior: smooth;
        }
        
        .gradient-bg {
            background: linear-gradient(135deg, #2563eb 0%, #1e40af 100%);
        }
        
        .feature-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
        }
        
        .download-btn {
            transition: all 0.3s ease;
        }
        
        .download-btn:hover {
            transform: scale(1.05);
        }
        
        .testimonial-card {
            transition: all 0.3s ease;
        }
        
        .testimonial-card:hover {
            transform: translateY(-3px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }
        
        .pulse {
            animation: pulse 2s infinite;
        }
        
        @keyframes pulse {
            0% {
                transform: scale(1);
            }
            50% {
                transform: scale(1.05);
            }
            100% {
                transform: scale(1);
            }
        }

        /* Modal styles */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1000; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
            backdrop-filter: blur(5px); /* Blur effect */
            -webkit-backdrop-filter: blur(5px); /* Safari support */
            justify-content: center;
            align-items: center;
        }

        .modal-content {
            background-color: #fefefe;
            margin: auto;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.3);
            width: 90%;
            max-width: 400px;
            text-align: center;
            position: relative;
            animation: fadeInScale 0.3s ease-out;
        }

        .close-button {
            color: #aaa;
            position: absolute;
            top: 10px;
            right: 15px;
            font-size: 28px;
            font-weight: bold;
            cursor: pointer;
        }

        .close-button:hover,
        .close-button:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }

        @keyframes fadeInScale {
            from {
                opacity: 0;
                transform: scale(0.9);
            }
            to {
                opacity: 1;
                transform: scale(1);
            }
        }
    </style>
</head>
<body class="bg-gray-50">
    <!-- Header/Navigation -->
    <header class="gradient-bg text-white">
        <div class="container mx-auto px-6 py-4">
            <div class="flex justify-between items-center">
                <div class="flex items-center space-x-2">
                    <img src="https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/aa8d96f8-3154-4fc3-b35b-0a7a0fe488df.png" alt="Logo de SwiftPack - Icono abstracto azul con forma de rayo estilizado" class="h-10 w-10">
                    <span class="text-xl font-bold">SwiftPack</span>
                </div>
                <nav class="hidden md:flex space-x-10">
                    <a href="#features" class="hover:text-blue-200 transition">Características</a>
                    <a href="#testimonials" class="hover:text-blue-200 transition">Testimonios</a>
                    <a href="#howto" class="hover:text-blue-200 transition">Cómo funciona</a>
                    <a href="#download" class="hover:text-blue-200 transition">Descargar</a>
                </nav>
                <button class="md:hidden">
                    <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16"></path>
                    </svg>
                </button>
            </div>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="gradient-bg text-white py-20">
        <div class="container mx-auto px-6 text-center">
            <h1 class="text-4xl md:text-6xl font-bold mb-6">Optimiza tu sistema al máximo</h1>
            <p class="text-xl md:text-2xl mb-10 max-w-3xl mx-auto">SwiftPack aumenta el rendimiento de tu computadora hasta un 60% con nuestra tecnología de optimización patentada.</p>
            <div class="flex flex-col md:flex-row justify-center space-y-4 md:space-y-0 md:space-x-6">
                <a href="#download" class="download-btn bg-white text-blue-600 px-8 py-4 rounded-full font-bold text-lg hover:bg-blue-50 pulse">Descargar Ahora</a>
                <a href="#features" class="download-btn border-2 border-white px-8 py-4 rounded-full font-bold text-lg hover:bg-blue-700">Saber Más</a>
            </div>
            <div class="mt-16">
                <img src="https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/e3cc4893-71de-4441-aad0-131a66abbd1a.png" alt="Captura de pantalla de SwiftPack mostrando gráficos de rendimiento mejorado" class="mx-auto rounded-lg shadow-2xl">
            </div>
        </div>
    </section>

    <!-- Features Section -->
    <section id="features" class="py-20 bg-white">
        <div class="container mx-auto px-6">
            <h2 class="text-3xl md:text-4xl font-bold text-center mb-16 text-gray-800">Características Potentes</h2>
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-10">
                <!-- Feature 1 -->
                <div class="feature-card bg-gray-50 p-8 rounded-xl transition duration-300">
                    <div class="w-16 h-16 bg-blue-100 rounded-full flex items-center justify-center mb-6">
                        <svg class="w-8 h-8 text-blue-600" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 10V3L4 14h7v7l9-11h-7z"></path>
                        </svg>
                    </div>
                    <h3 class="text-xl font-semibold mb-3 text-gray-800">Rendimiento Acelerado</h3>
                    <p class="text-gray-600">Acelera tu sistema hasta un 60% optimizando procesos y recursos en tiempo real.</p>
                </div>
                
                <!-- Feature 2 -->
                <div class="feature-card bg-gray-50 p-8 rounded-xl transition duration-300">
                    <div class="w-16 h-16 bg-blue-100 rounded-full flex items-center justify-center mb-6">
                        <svg class="w-8 h-8 text-blue-600" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z"></path>
                        </svg>
                    </div>
                    <h3 class="text-xl font-semibold mb-3 text-gray-800">Protección Avanzada</h3>
                    <p class="text-gray-600">Protege tu sistema contra amenazas mientras optimiza el rendimiento sin comprometer la seguridad.</p>
                </div>
                
                <!-- Feature 3 -->
                <div class="feature-card bg-gray-50 p-8 rounded-xl transition duration-300">
                    <div class="w-16 h-16 bg-blue-100 rounded-full flex items-center justify-center mb-6">
                        <svg class="w-8 h-8 text-blue-600" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 8c-1.657 0-3 .895-3 2s1.343 2 3 2 3 .895 3 2-1.343 2-3 2m0-8c1.11 0 2.08.402 2.599 1M12 8V7m0 1v8m0 0v1m0-1c-1.11 0-2.08-.402-2.599-1M21 12a9 9 0 11-18 0 9 9 0 0118 0z"></path>
                        </svg>
                    </div>
                    <h3 class="text-xl font-semibold mb-3 text-gray-800">Modo Ahorro</h3>
                    <p class="text-gray-600">Extiende la vida de tu batería hasta un 40% con nuestro modo de optimización para portátiles.</p>
                </div>
                
                <!-- Feature 4 -->
                <div class="feature-card bg-gray-50 p-8 rounded-xl transition duration-300">
                    <div class="w-16 h-16 bg-blue-100 rounded-full flex items-center justify-center mb-6">
                        <svg class="w-8 h-8 text-blue-600" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 8V4m0 0h4M4 4l5 5m11-1V4m0 0h-4m4 0l-5 5M4 16v4m0 0h4m-4 0l5-5m11 5l-5-5m5 5v-4m0 4h-4"></path>
                        </svg>
                    </div>
                    <h3 class="text-xl font-semibold mb-3 text-gray-800">Multitarea Fluida</h3>
                    <p class="text-gray-600">Ejecuta múltiples aplicaciones simultáneamente sin ralentización gracias a nuestra gestión inteligente de memoria.</p>
                </div>
                
                <!-- Feature 5 -->
                <div class="feature-card bg-gray-50 p-8 rounded-xl transition duration-300">
                    <div class="w-16 h-16 bg-blue-100 rounded-full flex items-center justify-center mb-6">
                        <svg class="w-8 h-8 text-blue-600" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 8h10M7 12h4m1 8l-4-4H5a2 2 0 01-2-2V6a2 2 0 012-2h14a2 2 0 012 2v8a2 2 0 01-2 2h-3l-4 4z"></path>
                        </svg>
                    </div>
                    <h3 class="text-xl font-semibold mb-3 text-gray-800">Actualizaciones Automáticas</h3>
                    <p class="text-gray-600">Mantén tu sistema siempre optimizado con nuestras actualizaciones automáticas en segundo plano.</p>
                </div>
                
                <!-- Feature 6 -->
                <div class="feature-card bg-gray-50 p-8 rounded-xl transition duration-300">
                    <div class="w-16 h-16 bg-blue-100 rounded-full flex items-center justify-center mb-6">
                        <svg class="w-8 h-8 text-blue-600" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5H7a2 2 0 00-2 2v12a2 2 0 002 2h10a2 2 0 002-2V7a2 2 0 00-2-2h-2M9 5a2 2 0 002 2h2a2 2 0 002-2M9 5a2 2 0 012-2h2a2 2 0 012 2"></path>
                        </svg>
                    </div>
                    <h3 class="text-xl font-semibold mb-3 text-gray-800">Informes Detallados</h3>
                    <p class="text-gray-600">Accede a informes completos sobre el estado y mejora del rendimiento de tu sistema.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Testimonials Section -->
    <section id="testimonials" class="py-20 bg-gray-50">
        <div class="container mx-auto px-6">
            <h2 class="text-3xl md:text-4xl font-bold text-center mb-16 text-gray-800">Lo Que Dicen Nuestros Usuarios</h2>
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-10">
                <!-- Testimonial 1 -->
                <div class="testimonial-card bg-white p-8 rounded-xl shadow-md transition duration-300">
                    <div class="flex items-center mb-4">
                        <img src="https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/38bd2440-886c-484a-9973-2700c01d6bb5.png" alt="Retrato de Carlos Gómez, Director TI en empresa tecnológica" class="w-12 h-12 rounded-full mr-4">
                        <div>
                            <h4 class="font-semibold">Carlos Gómez</h4>
                            <p class="text-sm text-gray-500">Director TI</p>
                        </div>
                    </div>
                    <p class="text-gray-600">"SwiftPack ha revolucionado nuestros sistemas. Desde que lo implementamos, los tiempos de respuesta han mejorado en un 45%."</p>
                    <div class="flex mt-4">
                        <svg class="w-5 h-5 text-yellow-400" fill="currentColor" viewBox="0 0 20 20"><path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z"></path></svg>
                        <svg class="w-5 h-5 text-yellow-400" fill="currentColor" viewBox="0 0 20 20"><path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z"></path></svg>
                        <svg class="w-5 h-5 text-yellow-400" fill="currentColor" viewBox="0 0 20 20"><path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z"></path></svg>
                        <svg class="w-5 h-5 text-yellow-400" fill="currentColor" viewBox="0 0 20 20"><path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z"></path></svg>
                        <svg class="w-5 h-5 text-yellow-400" fill="currentColor" viewBox="0 0 20 20"><path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z"></path></svg>
                    </div>
                </div>
                
                <!-- Testimonial 2 -->
                <div class="testimonial-card bg-white p-8 rounded-xl shadow-md transition duration-300">
                    <div class="flex items-center mb-4">
                        <img src="https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/bdd4fa56-8aea-49de-a6e2-65847dbc0c2c.png" alt="Retrato de Laura Méndez, Diseñadora gráfica profesional" class="w-12 h-12 rounded-full mr-4">
                        <div>
                            <h4 class="font-semibold">Laura Méndez</h4>
                            <p class="text-sm text-gray-500">Diseñadora Gráfica</p>
                        </div>
                    </div>
                    <p class="text-600">"Como diseñadora, necesito que mi PC funcione perfectamente. SwiftPack ha eliminado todos los retrasos en mis aplicaciones de diseño."</p>
                    <div class="flex mt-4">
                        <svg class="w-5 h-5 text-yellow-400" fill="currentColor" viewBox="0 0 20 20"><path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z"></path></svg>
                        <svg class="w-5 h-5 text-yellow-400" fill="currentColor" viewBox="0 0 20 20"><path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z"></path></svg>
                        <svg class="w-5 h-5 text-yellow-400" fill="currentColor" viewBox="0 0 20 20"><path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z"></path></svg>
                        <svg class="w-5 h-5 text-yellow-400" fill="currentColor" viewBox="0 0 20 20"><path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z"></path></svg>
                        <svg class="w-5 h-5 text-yellow-400" fill="currentColor" viewBox="0 0 20 20"><path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z"></path></svg>
                    </div>
                </div>
                
                <!-- Testimonial 3 -->
                <div class="testimonial-card bg-white p-8 rounded-xl shadow-md transition duration-300">
                    <div class="flex items-center mb-4">
                        <img src="https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/1b9876ab-8eb0-44fc-b53c-0d222f630255.png" alt="Retrato de Javier Ruiz, Gamer profesional y streamer" class="w-12 h-12 rounded-full mr-4">
                        <div>
                            <h4 class="font-semibold">Javier Ruiz</h4>
                            <p class="text-sm text-gray-500">Gamer Profesional</p>
                        </div>
                    </div>
                    <p class="text-gray-600">"Desde que uso SwiftPack, mis FPS en juegos se han mantenido estables y los tiempos de carga han disminuido significativamente."</p>
                    <div class="flex mt-4">
                        <svg class="w-5 h-5 text-yellow-400" fill="currentColor" viewBox="0 0 20 20"><path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z"></path></svg>
                        <svg class="w-5 h-5 text-yellow-400" fill="currentColor" viewBox="0 0 20 20"><path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z"></path></svg>
                        <svg class="w-5 h-5 text-yellow-400" fill="currentColor" viewBox="0 0 20 20"><path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z"></path></svg>
                        <svg class="w-5 h-5 text-yellow-400" fill="currentColor" viewBox="0 0 20 20"><path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z"></path></svg>
                        <svg class="w-5 h-5 text-yellow-400" fill="currentColor" viewBox="0 0 20 20"><path d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z"></path></svg>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- How it works -->
    <section id="howto" class="py-20 bg-white">
        <div class="container mx-auto px-6">
            <h2 class="text-3xl md:text-4xl font-bold text-center mb-16 text-gray-800">Cómo Funciona SwiftPack</h2>
            <div class="max-w-4xl mx-auto">
                <div class="grid grid-cols-1 md:grid-cols-3 gap-8 mb-20">
                    <!-- Step 1 -->
                    <div class="flex flex-col items-center text-center">
                        <div class="w-16 h-16 bg-blue-600 text-white rounded-full flex items-center justify-center mb-6 text-2xl font-bold">1</div>
                        <h3 class="text-xl font-semibold mb-3 text-gray-800">Descarga e Instalación</h3>
                        <p class="text-gray-600">Descarga en segundos y abrelo</p>
                    </div>
                    
                    <!-- Step 2 -->
                    <div class="flex flex-col items-center text-center">
                        <div class="w-16 h-16 bg-blue-600 text-white rounded-full flex items-center justify-center mb-6 text-2xl font-bold">2</div>
                        <h3 class="text-xl font-semibold mb-3 text-gray-800">Análisis del Sistema</h3>
                        <p class="text-gray-600">SwiftPack escanea tu sistema para identificar áreas de mejora y posibles problemas.</p>
                    </div>
                    
                    <!-- Step 3 -->
                    <div class="flex flex-col items-center text-center">
                        <div class="w-16 h-16 bg-blue-600 text-white rounded-full flex items-center justify-center mb-6 text-2xl font-bold">3</div>
                        <h3 class="text-xl font-semibold mb-3 text-gray-800">Optimización Automática</h3>
                        <p class="text-gray-600">Nuestra tecnología optimiza automáticamente tu sistema para obtener el máximo rendimiento.</p>
                    </div>
                </div>
                
                <div class="bg-gray-50 rounded-xl p-8 md:p-12">
                    <div class="flex flex-col md:flex-row items-center">
                        <div class="md:w-1/2 mb-8 md:mb-0 md:pr-10">
                            <h3 class="text-2xl font-bold mb-4 text-gray-800">Configuración Personalizada</h3>
                            <p class="text-gray-600 mb-6">Ajusta SwiftPack a tus necesidades específicas con nuestro panel de configuración avanzado. Cambia entre modos predefinidos o crea tus propios perfiles de optimización.</p>
                            <ul class="space-y-3">
                                <li class="flex items-start">
                                    <svg class="w-5 h-5 text-green-500 mr-2 mt-0.5" fill="currentColor" viewBox="0 0 20 20"><path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd"></path></svg>
                                    <span class="text-gray-600">Modo Juego: Máximo rendimiento para gaming</span>
                                </li>
                                <li class="flex items-start">
                                    <svg class="w-5 h-5 text-green-500 mr-2 mt-0.5" fill="currentColor" viewBox="0 0 20 20"><path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd"></path></svg>
                                    <span class="text-gray-600">Modo Oficina: Equilibrio perfecto entre rendimiento y consumo</span>
                                </li>
                                <li class="flex items-start">
                                    <svg class="w-5 h-5 text-green-500 mr-2 mt-0.5" fill="currentColor" viewBox="0 0 20 20"><path fill-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-9.293a1 1 0 00-1.414-1.414L9 10.586 7.707 9.293a1 1 0 00-1.414 1.414l2 2a1 1 0 001.414 0l4-4z" clip-rule="evenodd"></path></svg>
                                    <span class="text-gray-600">Modo Ahorro: Extiende la vida de tu batería</span>
                                </li>
                            </ul>
                        </div>
                        <div class="md:w-1/2">
                            <img src="https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/2958779e-cef1-41d0-bfb1-b3b17207561e.png" alt="Interfaz de usuario de SwiftPack mostrando paneles de configuración y gráficos de rendimiento" class="rounded-lg shadow-lg">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Download Section -->
    <section id="download" class="py-20 gradient-bg text-white">
        <div class="container mx-auto px-6 text-center">
            <h2 class="text-3xl md:text-4xl font-bold mb-6">Descarga SwiftPack Hoy</h2>
            <p class="text-xl mb-10 max-w-2xl mx-auto">Obtén mejoras inmediatas en el rendimiento de tu sistema. Disponible para Windows 10/11.</p>
            
            <div class="max-w-xl mx-auto bg-white bg-opacity-10 backdrop-blur-sm rounded-2xl p-8 md:p-12">
                <div class="grid grid-cols-1 gap-8">
                    <!-- Windows Download -->
                    <div class="bg-white bg-opacity-20 p-8 rounded-xl">
                        <div class="flex justify-center mb-6">
                            <img src="https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/8b076d5f-d6d3-4cd6-8780-e97529fcb4db.png" alt="Logo de Windows con estilo moderno" class="h-20 w-20">
                        </div>
                        <h3 class="text-xl font-bold mb-4">Versión Windows</h3>
                        <p class="mb-6">Compatibilidad: Windows 10/11</p>
                        <div class="flex flex-col space-y-4">
                            <button id="view-versions-btn" class="download-btn border-2 border-white px-6 py-3 rounded-lg font-bold hover:bg-white hover:text-blue-600">Ver Versiones</button>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="mt-12 text-sm">
                <p>Tamaño del archivo: Windows ~45MB</p>
                <p>Versión actual: 1.0 (Actualizada: 15/06/2023)</p>
                <p class="mt-2">También disponible en: <a href="#" class="underline hover:no-underline">Linux</a> | <a href="#" class="underline hover:no-underline">Enterprise</a></p>
            </div>
        </div>
    </section>

    <!-- Modal Structure -->
    <div id="versionsModal" class="modal">
        <div class="modal-content">
            <span class="close-button">&times;</span>
            <h3 class="text-2xl font-bold mb-6 text-gray-800">Versiones Disponibles</h3>
            <div class="space-y-4">
                <div class="bg-gray-100 p-4 rounded-lg flex justify-between items-center">
                    <span class="text-lg font-semibold text-gray-700">Versión 1.0</span>
                    <a href="https://www.mediafire.com/file/2k6fpz4mfhgnggh/SwiftPack+the+best+pack.rar/file" target="_blank" class="bg-blue-600 text-white px-4 py-2 rounded-lg hover:bg-blue-700 transition">Descargar</a>
                </div>
            </div>
        </div>
    </div>

    <!-- FAQ Section -->
    <section class="py-20 bg-gray-50">
        <div class="container mx-auto px-6">
            <h2 class="text-3xl md:text-4xl font-bold text-center mb-16 text-gray-800">Preguntas Frecuentes</h2>
            <div class="max-w-3xl mx-auto">
                <!-- FAQ Item 1 -->
                <div class="mb-6">
                    <button class="faq-question flex justify-between items-center w-full text-left font-semibold text-lg bg-white p-6 rounded-lg shadow-sm hover:bg-gray-50 transition">
                        <span>¿Qué requisitos de sistema necesita SwiftPack?</span>
                        <svg class="w-5 h-5 text-blue-600" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path></svg>
                    </button>
                    <div class="faq-answer bg-white p-6 rounded-b-lg border-t hidden">
                        <p class="text-gray-600">SwiftPack funciona en sistemas Windows 10/11. Requiere al menos 2GB de RAM y 100MB de espacio en disco para su instalación.</p>
                    </div>
                </div>
                
                <!-- FAQ Item 2 -->
                <div class="mb-6">
                    <button class="faq-question flex justify-between items-center w-full text-left font-semibold text-lg bg-white p-6 rounded-lg shadow-sm hover:bg-gray-50 transition">
                        <span>¿Es seguro usar SwiftPack?</span>
                        <svg class="w-5 h-5 text-blue-600" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path></svg>
                    </button>
                    <div class="faq-answer bg-white p-6 rounded-b-lg border-t hidden">
                        <p class="text-gray-600">Absolutamente. SwiftPack ha sido certificado por los principales laboratorios de seguridad y no contiene malware, adware ni ningún software no deseado. Nuestra tecnología opera dentro de los límites seguros establecidos por los fabricantes de hardware.</p>
                    </div>
                </div>
                
                <!-- FAQ Item 3 -->
                <div class="mb-6">
                    <button class="faq-question flex justify-between items-center w-full text-left font-semibold text-lg bg-white p-6 rounded-lg shadow-sm hover:bg-gray-50 transition">
                        <span>¿Cómo funciona el sistema de optimización?</span>
                        <svg class="w-5 h-5 text-blue-600" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path></svg>
                    </button>
                    <div class="faq-answer bg-white p-6 rounded-b-lg border-t hidden">
                        <p class="text-gray-600">SwiftPack utiliza algoritmos de aprendizaje automático para analizar los patrones de uso de tu sistema y ajustar dinámicamente la asignación de recursos. Gestiona procesos en segundo plano, optimiza la memoria RAM, ajusta la prioridad de procesos y realiza limpiezas inteligentes de archivos temporales.</p>
                    </div>
                </div>
                
                <!-- FAQ Item 4 -->
                <div class="mb-6">
                    <button class="faq-question flex justify-between items-center w-full text-left font-semibold text-lg bg-white p-6 rounded-lg shadow-sm hover:bg-gray-50 transition">
                        <span>¿Ofrecen garantía de satisfacción?</span>
                        <svg class="w-5 h-5 text-blue-600" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path></svg>
                    </button>
                    <div class="faq-answer bg-white p-6 rounded-b-lg border-t hidden">
                        <p class="text-gray-600">Sí, ofrecemos una garantía de 30 días sin preguntas. Si no ves mejoras significativas en el rendimiento de tu sistema dentro de este período, te reembolsaremos el precio de compra.</p>
                    </div>
                </div>
                
                <!-- FAQ Item 5 -->
                <div class="mb-6">
                    <button class="faq-question flex justify-between items-center w-full text-left font-semibold text-lg bg-white p-6 rounded-lg shadow-sm hover:bg-gray-50 transition">
                        <span>¿Hay algún costo oculto o suscripción requerida?</span>
                        <svg class="w-5 h-5 text-blue-600" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path></svg>
                    </button>
                    <div class="faq-answer bg-white p-6 rounded-b-lg border-t hidden">
                        <p class="text-gray-600">No, SwiftPack es un software de pago único sin costos ocultos ni suscripciones obligatorias. Con tu compra obtienes todas las actualizaciones menores de versión (2.x) durante el primer año.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="bg-gray-900 text-white py-12">
        <div class="container mx-auto px-6">
            <div class="grid grid-cols-1 md:grid-cols-4 gap-10">
                <!-- Company Info -->
                <div>
                    <div class="flex items-center space-x-2 mb-4">
                        <img src="https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/bcfc22c0-8d16-4d33-8c96-2110561dc77a.png" alt="Logo pequeño de SwiftPack" class="h-8 w-8">
                        <span class="text-lg font-bold">SwiftPack</span>
                    </div>
                    <p class="text-gray-400 mb-4">La solución definitiva para optimizar el rendimiento de tu sistema.</p>
                    <div class="flex space-x-4">
                        <a href="#"><img src="https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/a4ddf4aa-a85f-4df5-af05-3046689517cf.png" alt="Icono de Facebook" class="h-6 w-6"></a>
                        <a href="#"><img src="https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/6c8cd046-6770-4e0c-a87a-4e26b8a270b5.png" alt="Icono de Twitter" class="h-6 w-6"></a>
                        <a href="#"><img src="https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/a39e6865-2e56-4184-b9e2-7406a5b7632a.png" alt="Icono de Instagram" class="h-6 w-6"></a>
                        <a href="#"><img src="https://storage.googleapis.com/workspace-0f70711f-8b4e-4d94-86f1-2a93ccde5887/image/fb114713-503a-4160-b384-25e92bc09c6f.png" alt="Icono de YouTube" class="h-6 w-6"></a>
                    </div>
                </div>
                
                <!-- Quick Links -->
                <div>
                    <h3 class="text-lg font-semibold mb-4">Enlaces Rápidos</h3>
                    <ul class="space-y-2">
                        <li><a href="#" class="text-gray-400 hover:text-white transition">Inicio</a></li>
                        <li><a href="#features" class="text-gray-400 hover:text-white transition">Características</a></li>
                        <li><a href="#howto" class="text-gray-400 hover:text-white transition">Cómo funciona</a></li>
                        <li><a href="#download" class="text-gray-400 hover:text-white transition">Descargar</a></li>
                        <li><a href="#" class="text-gray-400 hover:text-white transition">Precios</a></li>
                    </ul>
                </div>
                
                <!-- Legal -->
                <div>
                    <h3 class="text-lg font-semibold mb-4">Legal</h3>
                    <ul class="space-y-2">
                        <li><a href="#" class="text-gray-400 hover:text-white transition">Términos de Servicio</a></li>
                        <li><a href="#" class="text-gray-400 hover:text-white transition">Política de Privacidad</a></li>
                        <li><a href="#" class="text-gray-400 hover:text-white transition">Política de Cookies</a></li>
                        <li><a href="#" class="text-gray-400 hover:text-white transition">Licencias</a></li>
                        <li><a href="#" class="text-gray-400 hover:text-white transition">Garantía</a></li>
                    </ul>
                </div>
                
                <!-- Contact -->
                <div>
                    <h3 class="text-lg font-semibold mb-4">Contacto</h3>
                    <ul class="space-y-2">
                        <li class="flex items-start">
                            <svg class="w-5 h-5 text-blue-400 mr-2 mt-0.5" fill="currentColor" viewBox="0 0 20 20"><path fill-rule="evenodd" d="M5.05 4.05a7 7 0 119.9 9.9L10 18.9l-4.95-4.95a7 7 0 010-9.9zM10 11a2 2 0 100-4 2 2 0 000 4z" clip-rule="evenodd"></path></svg>
                            <span class="text-gray-400">Calle Tecnológica 1.2, Rivera, Uruguay</span>
                        </li>
                        <li class="flex items-start">
                            <svg class="w-5 h-5 text-blue-400 mr-2 mt-0.5" fill="currentColor" viewBox="0 0 20 20"><path fill-rule="evenodd" d="M2 3a1 1 0 011-1h2.153a1 1 0 01.986.836L6.5 15h5.764a1 1 0 01.987 1.164l-1.914 11a1 1 0 01-1.987 0L9.854 8.354a1 1 0 00-.708-.54l-5.41-1.407a1 1 0 01-.583-.765L2 3zm7.193 7.205L10 11.746l.707-.54 1.652-1.275L11.5 6h-1l-1.307 7.205z" clip-rule="evenodd"></path></svg>
                            <span class="text-gray-400">maxi777777778@gmail.com</span>
                        </li>
                        <li class="flex items-start">
                            <svg class="w-5 h-5 text-blue-400 mr-2 mt-0.5" fill="currentColor" viewBox="0 0 20 20"><path fill-rule="evenodd" d="M7 2a2 2 0 00-2 2v12a2 2 0 002 2h6a2 2 0 002-2V4a2 2 0 00-2-2H7zm3 14a1 1 0 100-2 1 1 0 000 2z" clip-rule="evenodd"></path></svg>
                            <span class="text-gray-400">+No disponible</span>
                        </li>
                    </ul>
                </div>
            </div>
            
            <div class="border-t border-gray-800 mt-10 pt-6 flex flex-col md:flex-row justify-between items-center">
                <p class="text-gray-500 text-sm mb-4 md:mb-0">© 2023 SwiftPack. Todos los derechos reservados.</p>
                <div class="flex space-x-6">
                    <a href="#" class="text-gray-500 hover:text-white text-sm transition">Español</a>
                    <a href="#" class="text-gray-500 hover:text-white text-sm transition">English</a>
                    <a href="#" class="text-gray-500 hover:text-white text-sm transition">Français</a>
                    <a href="#" class="text-gray-500 hover:text-white text-sm transition">Deutsch</a>
                </div>
            </div>
        </div>
    </footer>

    <!-- JavaScript -->
    <script src="script.js"></script>
    <script>
        // Simple FAQ functionality
        document.querySelectorAll('.faq-question').forEach(button => {
            button.addEventListener('click', () => {
                const answer = button.nextElementSibling;
                answer.classList.toggle('hidden');
                
                const icon = button.querySelector('svg');
                icon.classList.toggle('rotate-180');
            });
        });
        
        // Get the modal
        var modal = document.getElementById("versionsModal");

        // Get the button that opens the modal
        var btn = document.getElementById("view-versions-btn");

        // Get the <span> element that closes the modal
        var span = document.getElementsByClassName("close-button")[0];

        // When the user clicks the button, open the modal 
        btn.onclick = function() {
          modal.style.display = "flex"; // Use flex to center content
        }

        // When the user clicks on <span> (x), close the modal
        span.onclick = function() {
          modal.style.display = "none";
        }

        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function(event) {
          if (event.target == modal) {
            modal.style.display = "none";
          }
        }

        // Simulate download functionality for the main Windows button
        document.getElementById('win-download-btn').addEventListener('click', () => {
            alert('Descarga simulada: Windows version iniciada. Por favor, usa "Ver Versiones" para la descarga real.');
            // In a real scenario, this would redirect to the actual download
        });
        
        // Mobile menu toggle would go here in a complete implementation
    </script>
</body>
</html>
