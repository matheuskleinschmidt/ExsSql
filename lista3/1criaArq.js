const fs = require('fs');
const path = require('path');

// Besta? talvez, mas tava chato criar tudo na mão

function criarArquivosSQL(letraFinal) {
    const letraInicial = 'a';
    const codigoInicial = letraInicial.charCodeAt(0);
    const codigoFinal = letraFinal.toLowerCase().charCodeAt(0);

    if (codigoFinal < codigoInicial || codigoFinal > 'z'.charCodeAt(0)) {
        console.log("Erro: Informe uma letra entre 'a' e 'z'.");
        return;
    }

    for (let codigoAtual = codigoInicial; codigoAtual <= codigoFinal; codigoAtual++) {
        const letra = String.fromCharCode(codigoAtual);
        const nomeArquivo = `${letra}.sql`;
        const conteudo = `-- ${letra})`;

        fs.writeFileSync(path.join(__dirname, nomeArquivo), conteudo, (err) => {
            if (err) throw err;
            console.log(`Arquivo ${nomeArquivo} criado com sucesso!`);
        });
    }

    console.log("Todos os arquivos foram criados com sucesso!");
}

criarArquivosSQL('g');
