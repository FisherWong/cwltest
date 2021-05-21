#!/usr/bin/env cwl-runner
# This tool description was generated automatically by wdl2cwl ver. 0.2

{
    "id": "initialize",
    "class": "CommandLineTool",
    "cwlVersion": "v1.0",
    "baseCommand": [],
    "requirements": [
        {
            "class": "ShellCommandRequirement"
        },
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "inputs": [
        {
            "id": "pipe",
            "type": "string"
        },
        {
            "id": "bin_nflow",
            "type": "string"
        },
        {
            "id": "outdir",
            "type": "string"
        },
        {
            "id": "config_json",
            "type": "string"
        },
        {
            "id": "info_txt",
            "type": "string"
        },
        {
            "id": "nifty1_history_info",
            "type": "string"
        },
        {
            "id": "nifty2_history_info",
            "type": "string"
        },
        {
            "id": "nifty_history_result",
            "type": "string"
        },
        {
            "id": "nifty_ini",
            "type": "string"
        },
        {
            "id": "sample",
            "type": "string"
        },
        {
            "id": "sequence_list",
            "type": "string"
        },
        {
            "id": "samlist",
            "type": "string",
            "default": "$(outdir + \"/stepslist/sample.list\")"
        },
        {
            "id": "baselist",
            "type": "string",
            "default": "$(outdir + \"/stepslist/baseline.list\")"
        },
        {
            "id": "sort1",
            "type": "string",
            "default": "$(outdir + \"/stepslist/sequence.sort\")"
        },
        {
            "id": "sort2",
            "type": "string",
            "default": "$(outdir + \"/stepslist/info.sort\")"
        },
        {
            "id": "runninginfo",
            "type": "string",
            "default": "$(outdir + \"/running.info\")"
        }
    ],
    "outputs": [
        {
            "id": "samplelist",
            "type": "File",
            "outputBinding": {
                "glob": "$(inputs.samlist)"
            }
        },
        {
            "id": "baselinelist",
            "type": "File",
            "outputBinding": {
                "glob": "$(inputs.baselist)"
            }
        },
        {
            "id": "runinfo",
            "type": "File",
            "outputBinding": {
                "glob": "$(inputs.runninginfo)"
            }
        }
    ],
    "arguments": [
        {
            "valueFrom": "mkdir -p $(inputs.outdir)/inputcp $(inputs.config_json) $(inputs.outdir)/input/config.jsoncp $(inputs.info_txt) $(inputs.outdir)/input/info.txtcp $(inputs.nifty1_history_info) $(inputs.outdir)/input/nifty1.history.infocp $(inputs.nifty2_history_info) $(inputs.outdir)/input/nifty2.history.infocp $(inputs.nifty_history_result) $(inputs.outdir)/input/nifty.history.resultcp $(inputs.nifty_ini) $(inputs.outdir)/input/nifty.inicp $(inputs.sequence_list) $(inputs.outdir)/input/sequence.list$(inputs.pipe) $(inputs.bin_nflow) $(inputs.outdir)mkdir -p $(inputs.outdir)/stepslistcat $(inputs.outdir)/input/sequence.list |grep -v UID| sort -k1 > $(inputs.sort1)cat $(inputs.outdir)/input/info.txt |grep -v Tube|sort -k3 > $(inputs.sort2)paste $(inputs.sort1) $(inputs.sort2)  > $(inputs.samlist)cut -f15 $(inputs.samlist) |sort -u > $(inputs.baselist)",
            "shellQuote": false
        }
    ]
}