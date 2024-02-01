
# Kalkulator dengan Ruby

def tambah(angka1, angka2)
  angka1 + angka2
end

def kurang(angka1, angka2)
  angka1 - angka2
end

def kali(angka1, angka2)
  angka1 * angka2
end

def bagi(angka1, angka2)
  if angka2 != 0
    angka1 / angka2.to_f
  else
    "Error: Pembagian dengan nol tidak diizinkan."
  end
end

def kalkulator
  puts "Selamat datang di Kalkulator Ruby"
  puts "Masukkan operasi matematika (contoh: 2 + 2):"

  input = gets.chomp

  # Pisahkan operator dan operand
  operator = input.scan(/[+\-*\/]/).first
  angka1, angka2 = input.split(/#{Regexp.escape(operator)}/).map(&:to_f)

  # Evaluasi operasi matematika
  result =
    case operator
    when "+"
      tambah(angka1, angka2)
    when "-"
      kurang(angka1, angka2)
    when "*"
      kali(angka1, angka2)
    when "/"
      bagi(angka1, angka2)
    else
      "Error: Operasi tidak valid."
    end

  puts "Hasil: #{result}"
end

# Panggil fungsi kalkulator
kalkulator


