---
parent: Blog
layout: default
---

<span class="post-date">{{ page.date | date: "%e %B %Y" }}</span>

{{ content }}

<hr />

<aside>
<h2>Recent Posts</h2>
<ol class="recent-posts">
	{% for post in site.posts limit: 5 %}
	<li class="post-item"><a href="{{ post.url }}"><span class="title">{{ post.title }}</span></a></li>
	{% endfor %}
</ol>
</aside>
