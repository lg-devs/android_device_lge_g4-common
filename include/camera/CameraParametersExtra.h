/*
 * Copyright (C) 2015 The CyanogenMod Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#define CAMERA_PARAMETERS_EXTRA_C \
const char CameraParameters::BURST_SHOT_OFF[] = "burst-shot"; \
const char CameraParameters::BURST_SHOT_ON[] = "burst-shot"; \
const char CameraParameters::KEY_BURST_SHOT[] = "burst-shot"; \
const char CameraParameters::KEY_BURST_SHOT_SUPPORTED[] = "burst-shot-supported"; \

#define CAMERA_PARAMETERS_EXTRA_H \
    static const char BURST_SHOT_OFF[]; \
    static const char BURST_SHOT_ON[]; \
    static const char KEY_BURST_SHOT[]; \
    static const char KEY_BURST_SHOT_SUPPORTED[]; \
