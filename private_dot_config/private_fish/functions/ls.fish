if command -q eza
    function ls
        eza --icons -a $argv
    end
end

function ll
    ls -l
end
