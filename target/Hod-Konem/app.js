
$(document).ready(function (){
    $("#table").append(initTable())
    fillTable();
})

let initTable = function initTable(){
    let table;
    for (let i = 0; i < 100; i++) {
        if (i === 0){
            table += "<tr>"
        }
        if (i % 10 === 0){
            table += "</tr>"+"\n"+"<tr>"
        }
        table += "<td id= \"cell-"+i+"\" onclick=window.location=\"/move?cell="+i+"\"></td>"+"\n"
        if (i === 99){
            table += "</tr>"
        }
    }
    return table;
}

let fillTable = function fillTable(){
    for (let i = 0; i < 100; i++) {
        let value = `<%=field.getFieldMap().get(${i})%>`
        $(`#cell-${i}`).text(value)
    }
}

