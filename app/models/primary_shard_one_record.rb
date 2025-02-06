class PrimaryShardOneRecord < ApplicationRecord
  self.abstract_class = true

  connects_to shards: {
    shard_one: { writing: :primary_shard_one, reading: :primary_shard_one }
  }
end
