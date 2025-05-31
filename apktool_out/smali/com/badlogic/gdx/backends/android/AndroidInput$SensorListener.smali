.class Lcom/badlogic/gdx/backends/android/AndroidInput$SensorListener;
.super Ljava/lang/Object;
.source "AndroidInput.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/backends/android/AndroidInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorListener"
.end annotation


# instance fields
.field final accelerometerValues:[F

.field final magneticFieldValues:[F

.field final nativeOrientation:Lcom/badlogic/gdx/Input$Orientation;

.field final synthetic this$0:Lcom/badlogic/gdx/backends/android/AndroidInput;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidInput;Lcom/badlogic/gdx/Input$Orientation;[F[F)V
    .locals 0
    .param p2, "nativeOrientation"    # Lcom/badlogic/gdx/Input$Orientation;
    .param p3, "accelerometerValues"    # [F
    .param p4, "magneticFieldValues"    # [F

    .prologue
    .line 857
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$SensorListener;->this$0:Lcom/badlogic/gdx/backends/android/AndroidInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 858
    iput-object p3, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$SensorListener;->accelerometerValues:[F

    .line 859
    iput-object p4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$SensorListener;->magneticFieldValues:[F

    .line 860
    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$SensorListener;->nativeOrientation:Lcom/badlogic/gdx/Input$Orientation;

    .line 861
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/hardware/Sensor;
    .param p2, "arg1"    # I

    .prologue
    .line 866
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 870
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 871
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$SensorListener;->nativeOrientation:Lcom/badlogic/gdx/Input$Orientation;

    sget-object v1, Lcom/badlogic/gdx/Input$Orientation;->Portrait:Lcom/badlogic/gdx/Input$Orientation;

    if-ne v0, v1, :cond_2

    .line 872
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$SensorListener;->accelerometerValues:[F

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$SensorListener;->accelerometerValues:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 879
    :cond_0
    :goto_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 880
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$SensorListener;->magneticFieldValues:[F

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$SensorListener;->magneticFieldValues:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 882
    :cond_1
    return-void

    .line 874
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$SensorListener;->accelerometerValues:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    aput v1, v0, v3

    .line 875
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$SensorListener;->accelerometerValues:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    neg-float v1, v1

    aput v1, v0, v2

    .line 876
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$SensorListener;->accelerometerValues:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    aput v1, v0, v4

    goto :goto_0
.end method
