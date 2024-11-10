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
/ Um monstro muito sagaz qe explode na sua cara.
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

-- Criatura 01
local monster_name = "Creeper"
local description = "Um monstro furtivo com um temperamento explosivo."
local emoji = "🧨"
local sound = "Tsssssssss"
local favorite_time = "Noturno"
local drop_item = "Pólvora"
local favorite_biome = "Todos"
local hobby = "Explodir"


-- Atributos 01
local atack_attribute = 10
local defense_attribute = 1
local life_attribute = 5
local speed_attribute = 7
local inteligence_attibute = 2


-- Criatura 02
local monster_name2 = "Zombie"
local description2 = "Um mob hostil, com olhos vazios, braços estendidos, sempre à espreita para atacar os jogadores durante a noite."
local emoji2 = "🧠"
local sound2 = "Grr... Hsss... Uuhh..."
local favorite_time2 = "Noturno"
local drop_item2 = "Carne Podre, Ferramentas e Armaduras"
local favorite_biome2 = "Todos"
local hobby2 = "Caçar jogadores á Noite"

-- Atributos 02
local atack_attribute2 = 4
local defense_attribute2 = 3
local life_attribute2 = 6
local speed_attribute2 = 4
local inteligence_attibute2 = 3

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

-- Função para mostrar os Atributos
local function showAttributes(revelAttributes)
    -- Revela o Cartão do Creeper de acordo com a escolha do usuário.
    if revelAttributes == "Creeper" then
        print("======================================================")
        print("| ")
        print("| ".. monster_name)
        print("| ".. description)
        print("| ")
        print("| Emoji Favorito: ".. emoji)
        print("| Som: ".. sound)
        print("| Horário: ".. favorite_time)
        print("| Drop: ".. drop_item)
        print("| Bioma Favorito: ".. favorite_biome)
        print("| Hobby: ".. hobby)
        print("| ")
        print("| Atributos")
        print("|    Ataque:       ".. getProgressBar(atack_attribute))
        print("|    Defesa:       ".. getProgressBar(defense_attribute))
        print("|    Vitalidade:   ".. getProgressBar(life_attribute))
        print("|    Velocidade:   ".. getProgressBar(speed_attribute))
        print("|    Inteligência: ".. getProgressBar(inteligence_attibute))
        print("| ")
        print("======================================================")
         -- Revela o Cartão do Zombie de acordo com a escolha do usuário.
    elseif revelAttributes == "Zombie" then
        print("======================================================")
        print("| ")
        print("| ".. monster_name2)
        print("| ".. description2)
        print("| ")
        print("| Emoji Favorito: ".. emoji2)
        print("| Som: ".. sound2)
        print("| Horário: ".. favorite_time2)
        print("| Drop: ".. drop_item2)
        print("| Bioma Favorito: ".. favorite_biome2)
        print("| Hobby: ".. hobby2)
        print("| ")
        print("| Atributos")
        print("|    Ataque:       ".. getProgressBar(atack_attribute2))
        print("|    Defesa:       ".. getProgressBar(defense_attribute2))
        print("|    Vitalidade:   ".. getProgressBar(life_attribute2))
        print("|    Velocidade:   ".. getProgressBar(speed_attribute2))
        print("|    Inteligência: ".. getProgressBar(inteligence_attibute2))
        print("| ")
        print("======================================================")
    else
        print("MONSTRO INVÁLIDO!")
    end

    
end

-- Chamada para escolha do monstro
print("Qual monstro deseja ver as informações:")
print("1 - Creeper")
print("2 - Zombie")

local choice = io.read("*n")

if choice == 1 then
    print(showAttributes("Creeper"))
elseif choice == 2 then
    print(showAttributes("Zombie"))
else
    print("ESCOLHA INVÁLIDA!")
end
