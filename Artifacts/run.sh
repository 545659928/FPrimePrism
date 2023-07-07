#!/bin/bash -e

source .config

ESC=$(printf '\033')
RED_INK="${ESC}[31m%s${ESC}[m\n"

is_child_process_running() {
    local local_child_pid=$1

    if kill -0 "$local_child_pid"; then
        return 0 # true
    else
        return 1 # false
    fi
}

xml2json() {
    local GENERATED_DIRNAME="generated"
    local re_xml_filepath=$FPRIME_PROJ_PATH"/Top/*TopologyAppAi.xml"
    local json_filename="origin.json"
    local tmp_filename="tmp.txt"

    local xml_filepath
    xml_filepath=$(find $re_xml_filepath)
    touch $xml_filepath

    # use fprime-layout tools
    "${FPRIME_LAYOUT_PATH}"/bin/fpl-convert-xml "$xml_filepath" >$tmp_filename
    "${FPRIME_LAYOUT_PATH}"/bin/fpl-layout <$tmp_filename >$json_filename

    # mv output into FPRIME_PROJ_PATH
    mkdir -p "$FPRIME_PROJ_PATH"/"$GENERATED_DIRNAME"
    mv $json_filename "$FPRIME_PROJ_PATH"/"$GENERATED_DIRNAME"/
    mv $tmp_filename "$FPRIME_PROJ_PATH"/"$GENERATED_DIRNAME"/
    cp "$FPRIME_PROJ_PATH"/"$GENERATED_DIRNAME"/"$json_filename" \
        "$FPRIME_PROJ_PATH"/"$GENERATED_DIRNAME"/A_view.json
}

# main

xml2json

# run fprime-visual on child process
./child_process.sh &
child_pid=$!
sleep 1

is_child_process_running $child_pid
if [ $? -ne 0 ]; then
    echo
    printf $RED_INK "Child process is not running"
    exit 1
fi

yarn start

kill $child_pid
is_child_process_running $child_pid
echo
if [ $? -eq 0 ]; then
    printf $RED_INK "Child process is still running on" $child_pid
else
    printf "Child process is killed successfuly"
fi
