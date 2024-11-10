--[[

Nome da Criatura
Descrição
Som que Faz
Atributos
    Ataque
    Defesa
    Vitalidade
    Velocidade
    Inteligência
Habilidades
    Furtividade
    Explosão
======================================================
/
/ CREEPER
/
/ Um monstro muito sagaz que explode na sua cara.
/
/ Som: Tssssssss
/
/ Atributos 
/   Ataque: ########00
/   Defesa: ###0000000
/   ...
/
======================================================

    
    ]]  

-- Criatura
local monster_name = "Creeper"
local description = "Um monstro furtivo com um temperamento explosivo."
local emoji = "🧨"
local sound = "Tsssssssss"
local favorite_time = "Noturno"
local drop_item = "Pólvora"

-- Atributos
local atack_attribute = 10
local defense_attribute = 1
local life_attribute = 5
local speed_attribute = 7
local inteligence_attibute = 2
-- Função recebe um atributos e nós retorna uma barra de progresso em stirng / texto
local function getProgressBar(attributes)
    local full_char = "⬜"
    local empty_char = "⬛"
    local result = ""
    for i = 1, 10, 1 do
        if i <= attributes then
            -- Quadradinho cheio
             result = result.. full_char
        else
            --Quadradinho vazio
             result = result.. empty_char
        end
    end
    return result
end
-- Cartão
print("======================================================")
print("| ")
print("| ".. monster_name)
print("| ".. description)
print("| ")
print("| Emoji Favorito: ".. emoji)
print("| Som: ".. sound)
print("| Horário: ".. favorite_time)
print("| Drop: ".. drop_item)
print("| ")
print("| Atributos")
print("|    Ataque:       ".. getProgressBar(atack_attribute))
print("|    Defesa:       ".. getProgressBar(defense_attribute))
print("|    Vitalidade:   ".. getProgressBar(life_attribute))
print("|    Velocidade:   ".. getProgressBar(speed_attribute))
print("|    Inteligência: ".. getProgressBar(inteligence_attibute))
print("| ")
print("======================================================")
