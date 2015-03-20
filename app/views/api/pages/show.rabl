object @page
attributes :id, :title, :excerpt, :content, :published_at
node(:is_home) do |post|
  current_site.root_page_content && current_site.root_post_id == post.id
end
