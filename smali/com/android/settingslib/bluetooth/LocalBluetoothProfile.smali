.class public interface abstract Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
.super Ljava/lang/Object;
.source "LocalBluetoothProfile.java"


# virtual methods
.method public abstract connect(Landroid/bluetooth/BluetoothDevice;)Z
.end method

.method public abstract disconnect(Landroid/bluetooth/BluetoothDevice;)Z
.end method

.method public abstract getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
.end method

.method public abstract getOrdinal()I
.end method

.method public abstract isAutoConnectable()Z
.end method

.method public abstract isConnectable()Z
.end method

.method public abstract isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
.end method

.method public abstract setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
.end method
