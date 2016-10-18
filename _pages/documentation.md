---
layout: page
title: Documentation
permalink: /docs/
---

# Documentation, tech. Specs and other Resources

… here you will find a loose collection of things documenting various aspects 
of VJlxnr …

{% for doc in site.documentation %}
<h2>
<a href="{{doc.url | prepend: site.github.url }}">
    {{doc.title}}
</a>
</h2>
<p class="post-excerpt">{{doc.description}}</p>

{% endfor %}

