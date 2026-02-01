import os
import random

# Create directories
os.makedirs("blogs/tech", exist_ok=True)

titles = [
    "The Future of AI in Web Development",
    "Why Python is Dominating Data Science",
    "Top 10 JavaScript Frameworks for 2026",
    "Understanding Blockchain Beyond Cryptocurrency",
    "The Rise of Edge Computing",
    "How 5G Will Change Mobile Development",
    "Cybersecurity Trends to Watch in 2026",
    "The Importance of UI/UX in Modern Apps",
    "Serverless Architecture: Pros and Cons",
    "Introduction to Quantum Computing for Developers",
    "The Ethics of Artificial Intelligence",
    "Optimizing Web Performance for 2026",
    "The Shift to Web3 and Decentralized Apps",
    "Machine Learning in Healthcare",
    "Cloud Computing: AWS vs Azure vs Google Cloud",
    "The Evolution of DevOps Practices",
    "Augmented Reality in E-commerce",
    "The Impact of Automation on Jobs",
    "Green Computing: Sustainable Tech Solutions",
    "The Future of Remote Work and Collaboration Tools",
]

template = """<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{title} - Prasanga Pokharel</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://fonts.googleapis.com/css2?family=Big+Shoulders+Display:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
    <script>
        tailwind.config = {{
            theme: {{
                extend: {{
                    colors: {{
                        primary: '#0040FF',
                        secondary: '#000111',
                        dark: '#000000',
                        light: '#ffffff',
                    }},
                    fontFamily: {{
                        sans: ['"Big Shoulders Display"', 'sans-serif'],
                        orbitron: ['Orbitron', 'sans-serif'],
                    }},
                }}
            }}
        }}
    </script>
</head>
<body class="bg-black text-white font-sans">
    <!-- Navbar -->
    <nav class="fixed w-full z-50 bg-black/80 backdrop-blur-md border-b border-primary/20">
        <div class="container mx-auto px-6 py-4 flex justify-between items-center">
            <a href="../../index.html" class="text-2xl font-bold font-orbitron text-white">PRASANGA</a>
            <a href="../../index.html" class="text-primary hover:text-white transition-colors">Back to Home</a>
        </div>
    </nav>

    <div class="pt-32 pb-20 container mx-auto px-6 max-w-4xl">
        <h1 class="text-5xl md:text-6xl font-bold font-orbitron mb-8 text-transparent bg-clip-text bg-gradient-to-r from-primary to-blue-400 leading-tight">{title}</h1>
        
        <div class="flex items-center gap-4 mb-12 text-gray-400">
            <span>February 2, 2026</span>
            <span>•</span>
            <span>Tech Insights</span>
        </div>

        <div class="prose prose-lg prose-invert max-w-none">
            <p class="text-xl text-gray-300 mb-8 leading-relaxed">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
            </p>
            
            <h2 class="text-3xl font-bold font-orbitron text-white mt-12 mb-6">Key Takeaways</h2>
            <p class="mb-6 text-gray-400">
                Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
            </p>

            <ul class="list-disc pl-6 mb-8 text-gray-400 space-y-2">
                <li>Innovation in technology is accelerating at an unprecedented pace.</li>
                <li>Adoption of new frameworks requires strategic planning.</li>
                <li>Security remains a top priority for all digital solutions.</li>
            </ul>

            <h2 class="text-3xl font-bold font-orbitron text-white mt-12 mb-6">Future Outlook</h2>
            <p class="mb-6 text-gray-400">
                Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.
            </p>
            
            <div class="bg-secondary p-8 rounded-xl border border-primary/20 my-12">
                <p class="italic text-gray-300">"Technology is best when it brings people together." - Matt Mullenweg</p>
            </div>

            <p class="mb-6 text-gray-400">
                Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.
            </p>
        </div>

        <div class="mt-20 pt-10 border-t border-gray-800">
            <h3 class="text-2xl font-bold font-orbitron mb-6">Read More</h3>
            <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
                <a href="#" class="block p-6 bg-secondary rounded-lg border border-gray-800 hover:border-primary transition-colors">
                    <h4 class="text-xl font-bold mb-2">Previous Post</h4>
                    <p class="text-sm text-gray-500">Exploring the depths of modern coding practices.</p>
                </a>
                <a href="#" class="block p-6 bg-secondary rounded-lg border border-gray-800 hover:border-primary transition-colors">
                    <h4 class="text-xl font-bold mb-2">Next Post</h4>
                    <p class="text-sm text-gray-500">How to scale your application effectively.</p>
                </a>
            </div>
        </div>
    </div>

    <footer class="py-10 bg-secondary border-t border-gray-900 text-center">
        <p class="text-gray-500">© 2026 Prasanga Pokharel. All rights reserved.</p>
    </footer>
</body>
</html>
"""

for i, title in enumerate(titles):
    filename = (
        title.lower().replace(" ", "-").replace(":", "").replace("/", "-") + ".html"
    )
    filepath = os.path.join("blogs/tech", filename)

    with open(filepath, "w") as f:
        f.write(template.format(title=title))

    print(f"Generated {filepath}")
