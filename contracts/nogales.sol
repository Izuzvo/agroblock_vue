pragma solidity >=0.5.0 <0.6.0;

contract Registro{

    mapping (uint => address) public consumoPorHa;
    
    struct ConsumoAgua{
        string sistemaRiego;
        uint cantidad;
        uint8 sector;
    }

    ConsumoAgua[] registroAgua; 
    function crearRegistroAgua(string memory _sistemaRiego, uint _cantidad, uint8 _sector) public{ 
        registroAgua.push(ConsumoAgua(_sistemaRiego, _cantidad, _sector));
        consumoPorHa[_sector]=msg.sender;

    }

    struct EvapoTranspiracion{ 
        uint litrosDia;
        int tempDia;
        uint8 sector;
    }

    EvapoTranspiracion[] registroEvaporacion; 

    function crearRegistroEvaporacion(uint _litrosDia, int _tempDia, uint8 _sector) public{ 
        registroEvaporacion.push(EvapoTranspiracion(_litrosDia, _tempDia, _sector));

    }

    mapping (uint => address) public lluviaASector;

    struct Presipitacion{ 
        uint cantidadLluvia;
        string fecha;
        uint8 sector;
    }

    Presipitacion[] registroPresipitacion; 

    function crearRegistroPresipitacion(uint _cantidadLluvia, string memory _fecha, uint8 _sector) public{ 

        registroPresipitacion.push(Presipitacion(_cantidadLluvia, _fecha, _sector));
        lluviaASector[_sector]=msg.sender;

    }

    struct Nutrientes{ 
        int cationes;
        int aniones;
        string sector;
    }

    Nutrientes[] registroNutrientes; 

    function crearRegistroNutrientes(int _cationes, int _aniones, string memory _sector) public{ 
        registroNutrientes.push(Nutrientes(_cationes, _aniones, _sector));
    }

}