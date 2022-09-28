# Copyright 2018 ikeyasu@gmail.com. All rights reserved.
# -----original license is below----
# Copyright 2017 Google Inc. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#FROM nvcr.io/nvidia/pytorch:22.08-py3
#FROM nvcr.io/nvidia/pytorch:22.05-py3
FROM nvcr.io/nvidia/pytorch:22.07-py3

# Container configuration
EXPOSE 8888

RUN pip install opencv-python==4.5.5.64
RUN apt-get update && apt-get -y install libgl1

RUN pip3 install jupyter_http_over_ws
RUN jupyter serverextension enable --py jupyter_http_over_ws
