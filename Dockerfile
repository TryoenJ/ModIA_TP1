#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Sep 26 16:32:32 2022

@author: tryoen
"""

# Base image from pytorch
FROM pytorch/pytorch
# Set up for your local zone an UTC information
ENV TZ=Europe/Paris
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
# Additional librairies
RUN pip install gradio tensorboard
RUN pip install markupsafe==2.0.1