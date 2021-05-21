#!/usr/bin/env cwl-runner
# This tool description was generated automatically by wdl2cwl ver. 0.2

{
    "id": "Wf_initialize",
    "class": "Workflow",
    "cwlVersion": "v1.0",
    "inputs": [
        {
            "id": "outdir",
            "type": "string"
        },
        {
            "id": "pipe",
            "type": "string"
        },
        {
            "id": "bin_nflow",
            "type": "string"
        },
        {
            "id": "bin_resolve",
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
            "id": "fnity1_history_info",
            "type": "string"
        },
        {
            "id": "fnity2_history_info",
            "type": "string"
        },
        {
            "id": "fnity_history_result",
            "type": "string"
        },
        {
            "id": "fnity_ini",
            "type": "string"
        },
        {
            "id": "sample",
            "type": "string"
        },
        {
            "id": "sequence_list",
            "type": "string"
        }
    ],
    "outputs": [
        {
            "id": "samplelist",
            "outputSource": "#initialize/samplelist"
        },
        {
            "id": "baselinelist",
            "outputSource": "#initialize/baselinelist"
        },
        {
            "id": "runinfo",
            "outputSource": "#initialize/runinfo"
        }
    ],
    "requirements": [
        {
            "class": "InlineJavascriptRequirement"
        }
    ],
    "steps": [
        {
            "id": "initialize",
            "in": [
                {
                    "id": "outdir",
                    "source": "outdir"
                },
                {
                    "id": "pipe",
                    "source": "pipe"
                },
                {
                    "id": "bin_nflow",
                    "source": "bin_nflow"
                },
                {
                    "id": "config_json",
                    "source": "config_json"
                },
                {
                    "id": "info_txt",
                    "source": "info_txt"
                },
                {
                    "id": "fnity1_history_info",
                    "source": "fnity1_history_info"
                },
                {
                    "id": "fnity2_history_info",
                    "source": "fnity2_history_info"
                },
                {
                    "id": "fnity_history_result",
                    "source": "fnity_history_result"
                },
                {
                    "id": "fnity_ini",
                    "source": "fnity_ini"
                },
                {
                    "id": "sample",
                    "source": "sample"
                },
                {
                    "id": "sequence_list",
                    "source": "sequence_list"
                }
            ],
            "out": [
                {
                    "id": "samplelist"
                },
                {
                    "id": "baselinelist"
                },
                {
                    "id": "runinfo"
                }
            ],
            "run": "initialize.cwl"
        }
    ]
}