---
layout: page
title: Documentation
permalink: /docs/
---
… here you will find a loose collection of things documenting various aspects 
of VJlxnr …

# Documentation, tech. Specs and other Resources

{% for doc in site.documentation %}
<h2>
<a href="{{doc.url | prepend: site.baseurl }}">
    {{doc.title}}
</a>
</h2>
<p class="post-excerpt">{{doc.description}}</p>

{% endfor %}

