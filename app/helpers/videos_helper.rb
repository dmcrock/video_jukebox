module VideosHelper
  def sanitize_embed_code(video)
    sanitize video.embed_code, :tags => ['embed', 'object', 'param', 'p']
  end
end
