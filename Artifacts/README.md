# FPrimePrism

## Requirements

* *Node* (created using *Node v16.15.0*)
* *Yarn* (created using *yarn v1.22.18*)
* *Scala sbt* (created using *sbt v1.9.0*)
* *Firefox* (preferred)

## Setup
 
1. Modify *.config* if you need
   * Source F' project path
   * Browser's default download path

2. `$ bash install.sh`

3. Replace [this line](https://github.com/fprime-community/fprime-visual/blob/main/public/js/script.js#L140)

    From

    ```.js
    const fileName = document.getElementById('select-file').value;
    ```

    to

    ```.js
    const fileName = location.href.split("/").slice(-1)[0].slice(1);
    ```

    to enable specifying src filename by URL

4. Modify & copy *config.json* in your target project

e.g.
```.json
{
    "segment": {
        "ground_segments": [
            "cmdDisp",
            "textLogger",
            ...
        ]
    }
}
```

## Usage

1. Copy your *F Prime* proj folder in root
2. `$ bash run.sh`
3. Drag & drop the target *P Prime* proj specified in *.config*
