<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Drag and Drop Example</title>
    <style>
        #drag1 {
            width: 100px;
            height: 100px;
            background-color: red;
            margin: 10px;
            cursor: grab;
        }

        #div1 {
            width: 200px;
            height: 200px;
            border: 2px dashed #000;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 10px;
        }
    </style>
</head>
<body>

<h2>Drag and Drop Example</h2>

<p>Drag the red box into the dashed box:</p>

<div id="drag1" draggable="true" ondragstart="drag(event)"></div>

<div id="div1" ondrop="drop(event)" ondragover="allowDrop(event)">Drop here</div>

<script>
    function allowDrop(ev) {
        ev.preventDefault();
    }

    function drag(ev) {
        ev.dataTransfer.setData("text", ev.target.id);
    }

    function drop(ev) {
        ev.preventDefault();
        var data = ev.dataTransfer.getData("text");
        ev.target.appendChild(document.getElementById(data));
    }
</script>

</body>
</html>
