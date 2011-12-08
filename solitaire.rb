class Solitaire

  def filter(data)
    data.gsub(/[^a-zA-Z]/, "").upcase
  end

  def to_ascii_array(data)
    data.codepoints.map { |c| c - 64 }
  end

  def encrypt_key(key, data)
    [data,key].transpose.map { |pair| pair.reduce { |d,k| ((d - 1 + k) % 26) + 1 } }
  end

  def from_ascii_array(data)
    data.map{ |c| (c + 64).chr }.join
  end

  def decrypt_key(key, data)
    [data,key].transpose.map { |pair| pair.reduce { |d,k| ((d - 1 - k) % 26) + 1 } }
  end

  def encrypt(key, data)
    from_ascii_array(encrypt_key(key, to_ascii_array(filter(data))))
  end

  def decrypt(key, data)
    from_ascii_array(decrypt_key(key, to_ascii_array(data)))
  end

end
