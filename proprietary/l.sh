#!/user/bin/sh

list="
        system_ext/etc/permissions/qti_libpermissions.xml
        system_ext/etc/permissions/telephony_system-ext_privapp-permissions-qti.xml
        system_ext/lib/com.qualcomm.qti.dpm.api@1.0.so
        system_ext/lib/libdpmctmgr.so
        system_ext/lib/libdpmfdmgr.so
        system_ext/lib/libdpmframework.so
        system_ext/lib/libdpmtcm.so
        system_ext/lib/vendor.qti.diaghal@1.0.so
        vendor/bin/ATFWD-daemon
        vendor/bin/batterysecret
        vendor/bin/hw/android.hardware.neuralnetworks@1.3-service-qti
        vendor/bin/hw/vendor.display.color@1.0-service
        vendor/bin/hw/vendor.qti.hardware.sensorscalibrate@1.0-service
        vendor/bin/ks
        vendor/bin/mdm_helper
        vendor/bin/port-bridge
        vendor/bin/ppd
        vendor/bin/qrtr-cfg
        vendor/bin/qrtr-lookup
        vendor/etc/cne/profileSlm.xml
        vendor/etc/cne/slm.conf
        vendor/etc/default-permissions/
        vendor/etc/hdr_config.cfg
        vendor/etc/init/android.hardware.neuralnetworks@1.3-service-qti.rc
        vendor/etc/init/init-qcril-data.rc
        vendor/etc/init/init.batterysecret.rc
        vendor/etc/init/port-bridge.rc
        vendor/etc/init/vendor.display.color@1.0-service.rc
        vendor/etc/init/vendor.qti.hardware.charger_monitor@1.0-service.rc
        vendor/etc/init/vendor.qti.hardware.sensorscalibrate@1.0-service.rc
        vendor/etc/sdr_config.cfg
        vendor/etc/seccomp_policy/atfwd@2.0.policy
        vendor/etc/ssg/
        vendor/etc/system_properties.xml
        vendor/etc/vintf/manifest/android.hardware.neuralnetworks@1.3-service-qti-hta.xml
        vendor/etc/vintf/manifest/android.hardware.neuralnetworks@1.3-service-qti.xml
        vendor/etc/wifi/
        vendor/lib/hw/audio.bluetooth_qti.default.so
        vendor/lib/hw/vendor.qti.hardware.audiohalext@1.0-impl.so
        vendor/lib/hw/vendor.qti.hardware.btconfigstore@2.0-impl.so
        vendor/lib/libAlacSwDec.so
        vendor/lib/libApeSwDec.so
        vendor/lib/libFlacSwDec.so
        vendor/lib/libOmxG711Dec.so
        vendor/lib/libOmxVideoDSMode.so
        vendor/lib/libVkLayer_q3dtools.so
        vendor/lib/libadreno_app_profiles.so
        vendor/lib/libaudioconfigstore.so
        vendor/lib/libcdsprpc.so
        vendor/lib/libdrc.so
        vendor/lib/libfastcrc.so
        vendor/lib/libgcs-calwrapper.so
        vendor/lib/libgcs-ipc.so
        vendor/lib/libgcs-osal.so
        vendor/lib/libgcs.so
        vendor/lib/libgpudataproducer.so
        vendor/lib/libhdmipassthru.so
        vendor/lib/liblistensoundmodel2.so
        vendor/lib/libmulawdec.so
        vendor/lib/libpvr.so
        vendor/lib/libscveCommon.so
        vendor/lib/libscveCommon_stub.so
        vendor/lib/libscveObjectSegmentation.so
        vendor/lib/libscveObjectSegmentation_stub.so
        vendor/lib/libscveObjectTracker.so
        vendor/lib/libscveObjectTracker_stub.so
        vendor/lib/libsurround_3mic_proc.so
        vendor/lib/libsysmon_cdsp_skel.so
        vendor/lib/libvpphcp.so
        vendor/lib/rfsa/adsp/libSuperSensor_skel.so
        vendor/lib/soundfx/libmisoundfx.so
        vendor/lib/soundfx/libqcbassboost.so
        vendor/lib/soundfx/libqcreverb.so
        vendor/lib/soundfx/libqcvirt.so
        vendor/lib/vendor.qti.hardware.dsp@1.0.so
        vendor/lib/vndk/
        vendor/lib64/deviceInfoServiceModule.so
        vendor/lib64/hw/vendor.qti.hardware.sensorscalibrate@1.0-impl.so
        vendor/lib64/libAlacSwDec.so
        vendor/lib64/libApeSwDec.so
        vendor/lib64/libFlacSwDec.so
        vendor/lib64/libMpeg4SwEncoder.so
        vendor/lib64/libOmxAacDec.so
        vendor/lib64/libOmxAlacDec.so
        vendor/lib64/libOmxAlacDecSw.so
        vendor/lib64/libOmxAmrDec.so
        vendor/lib64/libOmxAmrwbplusDec.so
        vendor/lib64/libOmxApeDec.so
        vendor/lib64/libOmxApeDecSw.so
        vendor/lib64/libOmxEvrcDec.so
        vendor/lib64/libOmxG711Dec.so
        vendor/lib64/libOmxQcelp13Dec.so
        vendor/lib64/libOmxSwVdec.so
        vendor/lib64/libOmxSwVencMpeg4.so
        vendor/lib64/libOmxVpp.so
        vendor/lib64/libOmxWmaDec.so
        vendor/lib64/libVkLayer_q3dtools.so
        vendor/lib64/libadreno_app_profiles.so
        vendor/lib64/libcdfw_remote_api.so
        vendor/lib64/libcneqmiutils.so
        vendor/lib64/libdisp-aba.so
        vendor/lib64/libgpudataproducer.so
        vendor/lib64/libhexagon_nn_stub.so
        vendor/lib64/libhta.so
        vendor/lib64/libhta_hexagon_runtime.so
        vendor/lib64/libkeymasterprovision.so
        vendor/lib64/liblearningmodule.so
        vendor/lib64/libmdmimgload.so
        vendor/lib64/libmeters.so
        vendor/lib64/liboemaids_vendor.so
        vendor/lib64/libpvr.so
        vendor/lib64/libqcodec2.so
        vendor/lib64/libril-qc-ltedirectdisc.so
        vendor/lib64/libril-qc-radioconfig.so
        vendor/lib64/libril-qcril-hook-oem.so
        vendor/lib64/libscveCommon.so
        vendor/lib64/libscveCommon_stub.so
        vendor/lib64/libscveObjectSegmentation.so
        vendor/lib64/libscveObjectSegmentation_stub.so
        vendor/lib64/libscveObjectTracker.so
        vendor/lib64/libscveObjectTracker_stub.so
        vendor/lib64/libsettings.so
        vendor/lib64/libsysmon_cdsp_skel.so
        vendor/lib64/libvppclient.so
        vendor/lib64/unnhal-acc-adreno.so
        vendor/lib64/unnhal-acc-common.so
        vendor/lib64/unnhal-acc-hta.so
        vendor/lib64/unnhal-acc-hvx.so
        vendor/lib64/vendor.display.color@1.0.so
        vendor/lib64/vendor.display.color@1.1.so
        vendor/lib64/vendor.display.color@1.2.so
        vendor/lib64/vendor.display.color@1.3.so
        vendor/lib64/vendor.display.color@1.4.so
        vendor/lib64/vendor.display.color@1.5.so
        vendor/lib64/vendor.display.postproc@1.0.so
        vendor/lib64/vendor.qti.hardware.radio.atcmdfwd@1.0.so
        vendor/lib64/vendor.qti.hardware.sensorscalibrate@1.0.so
       "

for file in $list;do
	dir=$(echo $file | sed 's|\(.*\)/.*|\1|')
	adb push $file /$dir
done
