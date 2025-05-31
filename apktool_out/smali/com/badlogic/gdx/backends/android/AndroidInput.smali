.class public Lcom/badlogic/gdx/backends/android/AndroidInput;
.super Ljava/lang/Object;
.source "AndroidInput.java"

# interfaces
.implements Lcom/badlogic/gdx/Input;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/backends/android/AndroidInput$SensorListener;,
        Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;,
        Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;
    }
.end annotation


# static fields
.field public static final NUM_TOUCHES:I = 0x14


# instance fields
.field final R:[F

.field public accelerometerAvailable:Z

.field private accelerometerListener:Landroid/hardware/SensorEventListener;

.field private final accelerometerValues:[F

.field final app:Lcom/badlogic/gdx/Application;

.field private azimuth:F

.field button:[I

.field private catchBack:Z

.field private catchMenu:Z

.field private compassAvailable:Z

.field private compassListener:Landroid/hardware/SensorEventListener;

.field private final config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

.field final context:Landroid/content/Context;

.field private currentEventTimeStamp:J

.field deltaX:[I

.field deltaY:[I

.field private handle:Landroid/os/Handler;

.field final hasMultitouch:Z

.field private inclination:F

.field private justPressedKeys:[Z

.field private justTouched:Z

.field private keyCount:I

.field keyEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private keyJustPressed:Z

.field keyListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View$OnKeyListener;",
            ">;"
        }
    .end annotation
.end field

.field keyboardAvailable:Z

.field private keys:[Z

.field private final magneticFieldValues:[F

.field private manager:Landroid/hardware/SensorManager;

.field private final nativeOrientation:Lcom/badlogic/gdx/Input$Orientation;

.field private final onscreenKeyboard:Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;

.field final orientation:[F

.field private pitch:F

.field private processor:Lcom/badlogic/gdx/InputProcessor;

.field realId:[I

.field requestFocus:Z

.field private roll:F

.field private sleepTime:I

.field private text:Ljava/lang/String;

.field private textListener:Lcom/badlogic/gdx/Input$TextInputListener;

.field touchEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final touchHandler:Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;

.field touchX:[I

.field touchY:[I

.field touched:[Z

.field usedKeyEvents:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool",
            "<",
            "Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field usedTouchEvents:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool",
            "<",
            "Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected final vibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/Application;Landroid/content/Context;Ljava/lang/Object;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V
    .locals 7
    .param p1, "activity"    # Lcom/badlogic/gdx/Application;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "view"    # Ljava/lang/Object;
    .param p4, "config"    # Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v4, Lcom/badlogic/gdx/backends/android/AndroidInput$1;

    const/16 v5, 0x10

    const/16 v6, 0x3e8

    invoke-direct {v4, p0, v5, v6}, Lcom/badlogic/gdx/backends/android/AndroidInput$1;-><init>(Lcom/badlogic/gdx/backends/android/AndroidInput;II)V

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->usedKeyEvents:Lcom/badlogic/gdx/utils/Pool;

    .line 92
    new-instance v4, Lcom/badlogic/gdx/backends/android/AndroidInput$2;

    const/16 v5, 0x10

    const/16 v6, 0x3e8

    invoke-direct {v4, p0, v5, v6}, Lcom/badlogic/gdx/backends/android/AndroidInput$2;-><init>(Lcom/badlogic/gdx/backends/android/AndroidInput;II)V

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->usedTouchEvents:Lcom/badlogic/gdx/utils/Pool;

    .line 100
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyListeners:Ljava/util/ArrayList;

    .line 101
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyEvents:Ljava/util/ArrayList;

    .line 102
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchEvents:Ljava/util/ArrayList;

    .line 103
    const/16 v4, 0x14

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchX:[I

    .line 104
    const/16 v4, 0x14

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchY:[I

    .line 105
    const/16 v4, 0x14

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaX:[I

    .line 106
    const/16 v4, 0x14

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaY:[I

    .line 107
    const/16 v4, 0x14

    new-array v4, v4, [Z

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touched:[Z

    .line 108
    const/16 v4, 0x14

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->button:[I

    .line 109
    const/16 v4, 0x14

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    .line 111
    const/4 v4, 0x0

    iput v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyCount:I

    .line 112
    const/16 v4, 0x100

    new-array v4, v4, [Z

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keys:[Z

    .line 113
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyJustPressed:Z

    .line 114
    const/16 v4, 0x100

    new-array v4, v4, [Z

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->justPressedKeys:[Z

    .line 116
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerAvailable:Z

    .line 117
    const/4 v4, 0x3

    new-array v4, v4, [F

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerValues:[F

    .line 118
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->text:Ljava/lang/String;

    .line 119
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->textListener:Lcom/badlogic/gdx/Input$TextInputListener;

    .line 124
    const/4 v4, 0x0

    iput v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->sleepTime:I

    .line 125
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->catchBack:Z

    .line 126
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->catchMenu:Z

    .line 128
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->compassAvailable:Z

    .line 130
    const/4 v4, 0x3

    new-array v4, v4, [F

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->magneticFieldValues:[F

    .line 131
    const/4 v4, 0x0

    iput v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->azimuth:F

    .line 132
    const/4 v4, 0x0

    iput v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->pitch:F

    .line 133
    const/4 v4, 0x0

    iput v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->roll:F

    .line 134
    const/4 v4, 0x0

    iput v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->inclination:F

    .line 135
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->justTouched:Z

    .line 139
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->currentEventTimeStamp:J

    .line 399
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->requestFocus:Z

    .line 610
    const/16 v4, 0x9

    new-array v4, v4, [F

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->R:[F

    .line 611
    const/4 v4, 0x3

    new-array v4, v4, [F

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->orientation:[F

    .line 148
    instance-of v4, p3, Landroid/view/View;

    if-eqz v4, :cond_0

    move-object v3, p3

    .line 149
    check-cast v3, Landroid/view/View;

    .line 150
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 151
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 152
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 153
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 154
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 156
    .end local v3    # "v":Landroid/view/View;
    :cond_0
    iput-object p4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    .line 157
    new-instance v4, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p2, v5, p0}, Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/badlogic/gdx/backends/android/AndroidInput;)V

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->onscreenKeyboard:Lcom/badlogic/gdx/backends/android/AndroidOnscreenKeyboard;

    .line 159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 160
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    const/4 v5, -0x1

    aput v5, v4, v0

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_1
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->handle:Landroid/os/Handler;

    .line 162
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->app:Lcom/badlogic/gdx/Application;

    .line 163
    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->context:Landroid/content/Context;

    .line 164
    iget v4, p4, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->touchSleepTime:I

    iput v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->sleepTime:I

    .line 165
    new-instance v4, Lcom/badlogic/gdx/backends/android/AndroidMultiTouchHandler;

    invoke-direct {v4}, Lcom/badlogic/gdx/backends/android/AndroidMultiTouchHandler;-><init>()V

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchHandler:Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;

    .line 166
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchHandler:Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;

    invoke-interface {v4, p2}, Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;->supportsMultitouch(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->hasMultitouch:Z

    .line 168
    const-string v4, "vibrator"

    invoke-virtual {p2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->vibrator:Landroid/os/Vibrator;

    .line 170
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidInput;->getRotation()I

    move-result v2

    .line 171
    .local v2, "rotation":I
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v4}, Lcom/badlogic/gdx/Application;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v4

    invoke-interface {v4}, Lcom/badlogic/gdx/Graphics;->getDesktopDisplayMode()Lcom/badlogic/gdx/Graphics$DisplayMode;

    move-result-object v1

    .line 172
    .local v1, "mode":Lcom/badlogic/gdx/Graphics$DisplayMode;
    if-eqz v2, :cond_2

    const/16 v4, 0xb4

    if-ne v2, v4, :cond_3

    :cond_2
    iget v4, v1, Lcom/badlogic/gdx/Graphics$DisplayMode;->width:I

    iget v5, v1, Lcom/badlogic/gdx/Graphics$DisplayMode;->height:I

    if-ge v4, v5, :cond_5

    :cond_3
    const/16 v4, 0x5a

    if-eq v2, v4, :cond_4

    const/16 v4, 0x10e

    if-ne v2, v4, :cond_6

    :cond_4
    iget v4, v1, Lcom/badlogic/gdx/Graphics$DisplayMode;->width:I

    iget v5, v1, Lcom/badlogic/gdx/Graphics$DisplayMode;->height:I

    if-gt v4, v5, :cond_6

    .line 174
    :cond_5
    sget-object v4, Lcom/badlogic/gdx/Input$Orientation;->Landscape:Lcom/badlogic/gdx/Input$Orientation;

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->nativeOrientation:Lcom/badlogic/gdx/Input$Orientation;

    .line 178
    :goto_1
    return-void

    .line 176
    :cond_6
    sget-object v4, Lcom/badlogic/gdx/Input$Orientation;->Portrait:Lcom/badlogic/gdx/Input$Orientation;

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->nativeOrientation:Lcom/badlogic/gdx/Input$Orientation;

    goto :goto_1
.end method

.method private resize([I)[I
    .locals 3
    .param p1, "orig"    # [I

    .prologue
    const/4 v2, 0x0

    .line 735
    array-length v1, p1

    add-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    .line 736
    .local v0, "tmp":[I
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 737
    return-object v0
.end method

.method private resize([Z)[Z
    .locals 3
    .param p1, "orig"    # [Z

    .prologue
    const/4 v2, 0x0

    .line 741
    array-length v1, p1

    add-int/lit8 v1, v1, 0x2

    new-array v0, v1, [Z

    .line 742
    .local v0, "tmp":[Z
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 743
    return-object v0
.end method

.method private updateOrientation()V
    .locals 4

    .prologue
    .line 614
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->R:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerValues:[F

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->magneticFieldValues:[F

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->R:[F

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->orientation:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 616
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->orientation:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->azimuth:F

    .line 617
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->orientation:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->pitch:F

    .line 618
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->orientation:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->roll:F

    .line 620
    :cond_0
    return-void
.end method


# virtual methods
.method public addKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnKeyListener;

    .prologue
    .line 832
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 833
    return-void
.end method

.method public cancelVibrate()V
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 589
    return-void
.end method

.method public getAccelerometerX()F
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerValues:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getAccelerometerY()F
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerValues:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getAccelerometerZ()F
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerValues:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getAzimuth()F
    .locals 1

    .prologue
    .line 633
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->compassAvailable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 636
    :goto_0
    return v0

    .line 635
    :cond_0
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidInput;->updateOrientation()V

    .line 636
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->azimuth:F

    goto :goto_0
.end method

.method public getCurrentEventTime()J
    .locals 2

    .prologue
    .line 828
    iget-wide v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->currentEventTimeStamp:J

    return-wide v0
.end method

.method public getDeltaX()I
    .locals 2

    .prologue
    .line 800
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaX:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getDeltaX(I)I
    .locals 1
    .param p1, "pointer"    # I

    .prologue
    .line 805
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaX:[I

    aget v0, v0, p1

    return v0
.end method

.method public getDeltaY()I
    .locals 2

    .prologue
    .line 810
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaY:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getDeltaY(I)I
    .locals 1
    .param p1, "pointer"    # I

    .prologue
    .line 815
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaY:[I

    aget v0, v0, p1

    return v0
.end method

.method public getFreePointerIndex()I
    .locals 4

    .prologue
    .line 718
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    array-length v1, v2

    .line 719
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 720
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    aget v2, v2, v0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 731
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 719
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 723
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    invoke-direct {p0, v2}, Lcom/badlogic/gdx/backends/android/AndroidInput;->resize([I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    .line 724
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchX:[I

    invoke-direct {p0, v2}, Lcom/badlogic/gdx/backends/android/AndroidInput;->resize([I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchX:[I

    .line 725
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchY:[I

    invoke-direct {p0, v2}, Lcom/badlogic/gdx/backends/android/AndroidInput;->resize([I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchY:[I

    .line 726
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaX:[I

    invoke-direct {p0, v2}, Lcom/badlogic/gdx/backends/android/AndroidInput;->resize([I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaX:[I

    .line 727
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaY:[I

    invoke-direct {p0, v2}, Lcom/badlogic/gdx/backends/android/AndroidInput;->resize([I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaY:[I

    .line 728
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touched:[Z

    invoke-direct {p0, v2}, Lcom/badlogic/gdx/backends/android/AndroidInput;->resize([Z)[Z

    move-result-object v2

    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touched:[Z

    .line 729
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->button:[I

    invoke-direct {p0, v2}, Lcom/badlogic/gdx/backends/android/AndroidInput;->resize([I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->button:[I

    move v0, v1

    .line 731
    goto :goto_1
.end method

.method public getInputProcessor()Lcom/badlogic/gdx/InputProcessor;
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    return-object v0
.end method

.method public getNativeOrientation()Lcom/badlogic/gdx/Input$Orientation;
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->nativeOrientation:Lcom/badlogic/gdx/Input$Orientation;

    return-object v0
.end method

.method public getPitch()F
    .locals 1

    .prologue
    .line 641
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->compassAvailable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 644
    :goto_0
    return v0

    .line 643
    :cond_0
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidInput;->updateOrientation()V

    .line 644
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->pitch:F

    goto :goto_0
.end method

.method public getRoll()F
    .locals 1

    .prologue
    .line 649
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->compassAvailable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 652
    :goto_0
    return v0

    .line 651
    :cond_0
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidInput;->updateOrientation()V

    .line 652
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->roll:F

    goto :goto_0
.end method

.method public getRotation()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 762
    const/4 v0, 0x0

    .line 764
    .local v0, "orientation":I
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->context:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 765
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 770
    :goto_0
    packed-switch v0, :pswitch_data_0

    move v1, v2

    .line 780
    :goto_1
    return v1

    .line 767
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->context:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    goto :goto_0

    :pswitch_0
    move v1, v2

    .line 772
    goto :goto_1

    .line 774
    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_1

    .line 776
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_1

    .line 778
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_1

    .line 770
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getRotationMatrix([F)V
    .locals 3
    .param p1, "matrix"    # [F

    .prologue
    .line 628
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerValues:[F

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->magneticFieldValues:[F

    invoke-static {p1, v0, v1, v2}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    .line 629
    return-void
.end method

.method public getTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "listener"    # Lcom/badlogic/gdx/Input$TextInputListener;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "hint"    # Ljava/lang/String;

    .prologue
    .line 197
    iget-object v6, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->handle:Landroid/os/Handler;

    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidInput$3;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/backends/android/AndroidInput$3;-><init>(Lcom/badlogic/gdx/backends/android/AndroidInput;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/Input$TextInputListener;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 240
    return-void
.end method

.method public getX()I
    .locals 2

    .prologue
    .line 244
    monitor-enter p0

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchX:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    monitor-exit p0

    return v0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getX(I)I
    .locals 1
    .param p1, "pointer"    # I

    .prologue
    .line 258
    monitor-enter p0

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchX:[I

    aget v0, v0, p1

    monitor-exit p0

    return v0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getY()I
    .locals 2

    .prologue
    .line 251
    monitor-enter p0

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchY:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    monitor-exit p0

    return v0

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getY(I)I
    .locals 1
    .param p1, "pointer"    # I

    .prologue
    .line 265
    monitor-enter p0

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchY:[I

    aget v0, v0, p1

    monitor-exit p0

    return v0

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isButtonPressed(I)Z
    .locals 5
    .param p1, "button"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 598
    monitor-enter p0

    .line 599
    :try_start_0
    iget-boolean v3, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->hasMultitouch:Z

    if-eqz v3, :cond_1

    .line 600
    const/4 v0, 0x0

    .local v0, "pointer":I
    :goto_0
    const/16 v3, 0x14

    if-ge v0, v3, :cond_1

    .line 601
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touched:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->button:[I

    aget v3, v3, v0

    if-ne v3, p1, :cond_0

    .line 602
    monitor-exit p0

    .line 606
    .end local v0    # "pointer":I
    :goto_1
    return v1

    .line 600
    .restart local v0    # "pointer":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 606
    .end local v0    # "pointer":I
    :cond_1
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touched:[Z

    const/4 v4, 0x0

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->button:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    if-ne v3, p1, :cond_2

    :goto_2
    monitor-exit p0

    goto :goto_1

    .line 607
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    move v1, v2

    .line 606
    goto :goto_2
.end method

.method public isCatchBackKey()Z
    .locals 1

    .prologue
    .line 568
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->catchBack:Z

    return v0
.end method

.method public isCursorCatched()Z
    .locals 1

    .prologue
    .line 795
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized isKeyJustPressed(I)Z
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 289
    monitor-enter p0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 290
    :try_start_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyJustPressed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :goto_0
    monitor-exit p0

    return v0

    .line 292
    :cond_0
    if-ltz p1, :cond_1

    const/16 v0, 0xff

    if-le p1, v0, :cond_2

    .line 293
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 295
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->justPressedKeys:[Z

    aget-boolean v0, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isKeyPressed(I)Z
    .locals 2
    .param p1, "key"    # I

    .prologue
    const/4 v0, 0x0

    .line 278
    monitor-enter p0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 279
    :try_start_0
    iget v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 284
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 281
    :cond_1
    if-ltz p1, :cond_0

    const/16 v1, 0xff

    if-gt p1, v1, :cond_0

    .line 284
    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keys:[Z

    aget-boolean v0, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isPeripheralAvailable(Lcom/badlogic/gdx/Input$Peripheral;)Z
    .locals 3
    .param p1, "peripheral"    # Lcom/badlogic/gdx/Input$Peripheral;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 708
    sget-object v2, Lcom/badlogic/gdx/Input$Peripheral;->Accelerometer:Lcom/badlogic/gdx/Input$Peripheral;

    if-ne p1, v2, :cond_1

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerAvailable:Z

    .line 714
    :cond_0
    :goto_0
    return v0

    .line 709
    :cond_1
    sget-object v2, Lcom/badlogic/gdx/Input$Peripheral;->Compass:Lcom/badlogic/gdx/Input$Peripheral;

    if-ne p1, v2, :cond_2

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->compassAvailable:Z

    goto :goto_0

    .line 710
    :cond_2
    sget-object v2, Lcom/badlogic/gdx/Input$Peripheral;->HardwareKeyboard:Lcom/badlogic/gdx/Input$Peripheral;

    if-ne p1, v2, :cond_3

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyboardAvailable:Z

    goto :goto_0

    .line 711
    :cond_3
    sget-object v2, Lcom/badlogic/gdx/Input$Peripheral;->OnscreenKeyboard:Lcom/badlogic/gdx/Input$Peripheral;

    if-eq p1, v2, :cond_0

    .line 712
    sget-object v2, Lcom/badlogic/gdx/Input$Peripheral;->Vibrator:Lcom/badlogic/gdx/Input$Peripheral;

    if-ne p1, v2, :cond_4

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->vibrator:Landroid/os/Vibrator;

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 713
    :cond_4
    sget-object v0, Lcom/badlogic/gdx/Input$Peripheral;->MultitouchScreen:Lcom/badlogic/gdx/Input$Peripheral;

    if-ne p1, v0, :cond_5

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->hasMultitouch:Z

    goto :goto_0

    :cond_5
    move v0, v1

    .line 714
    goto :goto_0
.end method

.method public isTouched()Z
    .locals 3

    .prologue
    .line 300
    monitor-enter p0

    .line 301
    :try_start_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->hasMultitouch:Z

    if-eqz v1, :cond_1

    .line 302
    const/4 v0, 0x0

    .local v0, "pointer":I
    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 303
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touched:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 304
    const/4 v1, 0x1

    monitor-exit p0

    .line 308
    .end local v0    # "pointer":I
    :goto_1
    return v1

    .line 302
    .restart local v0    # "pointer":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    .end local v0    # "pointer":I
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touched:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    monitor-exit p0

    goto :goto_1

    .line 309
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isTouched(I)Z
    .locals 1
    .param p1, "pointer"    # I

    .prologue
    .line 271
    monitor-enter p0

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touched:[Z

    aget-boolean v0, v0, p1

    monitor-exit p0

    return v0

    .line 273
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public justTouched()Z
    .locals 1

    .prologue
    .line 593
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->justTouched:Z

    return v0
.end method

.method public lookUpPointerIndex(I)I
    .locals 7
    .param p1, "pointerId"    # I

    .prologue
    .line 747
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    array-length v2, v3

    .line 748
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 749
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    aget v3, v3, v1

    if-ne v3, p1, :cond_0

    .line 757
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 748
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 752
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 753
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_2

    .line 754
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 753
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 756
    :cond_2
    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v4, "AndroidInput"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pointer ID lookup failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public onDrop(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 432
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/backends/android/AndroidInput;->postTap(II)V

    .line 433
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 458
    const/4 v5, 0x0

    .local v5, "i":I
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, "n":I
    :goto_0
    if-ge v5, v6, :cond_1

    .line 459
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View$OnKeyListener;

    invoke-interface {v7, p1, p2, p3}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    .line 541
    :goto_1
    return v7

    .line 458
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 461
    :cond_1
    monitor-enter p0

    .line 462
    const/4 v4, 0x0

    .line 464
    .local v4, "event":Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;
    :try_start_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    const/4 v10, 0x2

    if-ne v7, v10, :cond_3

    .line 465
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v3

    .line 466
    .local v3, "chars":Ljava/lang/String;
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_2

    .line 467
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->usedKeyEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;

    move-object v4, v0

    .line 468
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    iput-wide v10, v4, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->timeStamp:J

    .line 469
    const/4 v7, 0x0

    iput v7, v4, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->keyCode:I

    .line 470
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    iput-char v7, v4, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->keyChar:C

    .line 471
    const/4 v7, 0x2

    iput v7, v4, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->type:I

    .line 472
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 474
    :cond_2
    const/4 v7, 0x0

    monitor-exit p0

    goto :goto_1

    .line 535
    .end local v3    # "chars":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 477
    :cond_3
    :try_start_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v7

    int-to-char v2, v7

    .line 479
    .local v2, "character":C
    const/16 v7, 0x43

    if-ne p2, v7, :cond_4

    const/16 v2, 0x8

    .line 481
    :cond_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 534
    :cond_5
    :goto_3
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v7}, Lcom/badlogic/gdx/Application;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v7

    invoke-interface {v7}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    .line 535
    monitor-exit p0

    .line 538
    const/16 v7, 0xff

    if-ne p2, v7, :cond_9

    const/4 v7, 0x1

    goto :goto_1

    .line 483
    :pswitch_0
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->usedKeyEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;

    move-object v4, v0

    .line 484
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    iput-wide v10, v4, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->timeStamp:J

    .line 485
    const/4 v7, 0x0

    iput-char v7, v4, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->keyChar:C

    .line 486
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    iput v7, v4, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->keyCode:I

    .line 487
    const/4 v7, 0x0

    iput v7, v4, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->type:I

    .line 490
    const/4 v7, 0x4

    if-ne p2, v7, :cond_6

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 491
    const/16 p2, 0xff

    .line 492
    iput p2, v4, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->keyCode:I

    .line 495
    :cond_6
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keys:[Z

    iget v10, v4, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->keyCode:I

    aget-boolean v7, v7, v10

    if-nez v7, :cond_5

    .line 497
    iget v7, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyCount:I

    .line 498
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keys:[Z

    iget v10, v4, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->keyCode:I

    const/4 v11, 0x1

    aput-boolean v11, v7, v10

    goto :goto_3

    .line 502
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 503
    .local v8, "timeStamp":J
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->usedKeyEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;

    move-object v4, v0

    .line 504
    iput-wide v8, v4, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->timeStamp:J

    .line 505
    const/4 v7, 0x0

    iput-char v7, v4, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->keyChar:C

    .line 506
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    iput v7, v4, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->keyCode:I

    .line 507
    const/4 v7, 0x1

    iput v7, v4, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->type:I

    .line 509
    const/4 v7, 0x4

    if-ne p2, v7, :cond_7

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 510
    const/16 p2, 0xff

    .line 511
    iput p2, v4, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->keyCode:I

    .line 513
    :cond_7
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->usedKeyEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;

    move-object v4, v0

    .line 516
    iput-wide v8, v4, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->timeStamp:J

    .line 517
    iput-char v2, v4, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->keyChar:C

    .line 518
    const/4 v7, 0x0

    iput v7, v4, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->keyCode:I

    .line 519
    const/4 v7, 0x2

    iput v7, v4, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->type:I

    .line 520
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    const/16 v7, 0xff

    if-ne p2, v7, :cond_8

    .line 523
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keys:[Z

    const/16 v10, 0xff

    aget-boolean v7, v7, v10

    if-eqz v7, :cond_5

    .line 524
    iget v7, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyCount:I

    .line 525
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keys:[Z

    const/16 v10, 0xff

    const/4 v11, 0x0

    aput-boolean v11, v7, v10

    goto/16 :goto_3

    .line 528
    :cond_8
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keys:[Z

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    aget-boolean v7, v7, v10

    if-eqz v7, :cond_5

    .line 529
    iget v7, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyCount:I

    .line 530
    iget-object v7, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keys:[Z

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v10

    const/4 v11, 0x0

    aput-boolean v11, v7, v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 539
    .end local v8    # "timeStamp":J
    :cond_9
    iget-boolean v7, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->catchBack:Z

    if-eqz v7, :cond_a

    const/4 v7, 0x4

    if-ne p2, v7, :cond_a

    const/4 v7, 0x1

    goto/16 :goto_1

    .line 540
    :cond_a
    iget-boolean v7, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->catchMenu:Z

    if-eqz v7, :cond_b

    const/16 v7, 0x52

    if-ne p2, v7, :cond_b

    const/4 v7, 0x1

    goto/16 :goto_1

    .line 541
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 481
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 836
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidInput;->unregisterSensorListeners()V

    .line 839
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 842
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touched:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 843
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 846
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidInput;->registerSensorListeners()V

    .line 847
    return-void
.end method

.method public onTap(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 425
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/backends/android/AndroidInput;->postTap(II)V

    .line 426
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 403
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->requestFocus:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 404
    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 405
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->requestFocus:Z

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchHandler:Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;

    invoke-interface {v0, p2, p0}, Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;->onTouch(Landroid/view/MotionEvent;Lcom/badlogic/gdx/backends/android/AndroidInput;)V

    .line 412
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->sleepTime:I

    if-eqz v0, :cond_1

    .line 414
    :try_start_0
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->sleepTime:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :cond_1
    :goto_0
    return v2

    .line 415
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected postTap(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 436
    monitor-enter p0

    .line 437
    :try_start_0
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->usedTouchEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;

    .line 438
    .local v0, "event":Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->timeStamp:J

    .line 439
    const/4 v1, 0x0

    iput v1, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->pointer:I

    .line 440
    iput p1, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->x:I

    .line 441
    iput p2, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->y:I

    .line 442
    const/4 v1, 0x0

    iput v1, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->type:I

    .line 443
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->usedTouchEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "event":Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;
    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;

    .line 446
    .restart local v0    # "event":Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->timeStamp:J

    .line 447
    const/4 v1, 0x0

    iput v1, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->pointer:I

    .line 448
    iput p1, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->x:I

    .line 449
    iput p2, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->y:I

    .line 450
    const/4 v1, 0x1

    iput v1, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->type:I

    .line 451
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v1}, Lcom/badlogic/gdx/Application;->getGraphics()Lcom/badlogic/gdx/Graphics;

    move-result-object v1

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    .line 454
    return-void

    .line 452
    .end local v0    # "event":Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method processEvents()V
    .locals 8

    .prologue
    .line 319
    monitor-enter p0

    .line 320
    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->justTouched:Z

    .line 321
    iget-boolean v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyJustPressed:Z

    if-eqz v4, :cond_0

    .line 322
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyJustPressed:Z

    .line 323
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->justPressedKeys:[Z

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 324
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->justPressedKeys:[Z

    const/4 v5, 0x0

    aput-boolean v5, v4, v1

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 328
    .end local v1    # "i":I
    :cond_0
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    if-eqz v4, :cond_2

    .line 329
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    .line 331
    .local v3, "processor":Lcom/badlogic/gdx/InputProcessor;
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 332
    .local v2, "len":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 333
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;

    .line 334
    .local v0, "e":Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;
    iget-wide v4, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->timeStamp:J

    iput-wide v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->currentEventTimeStamp:J

    .line 335
    iget v4, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->type:I

    packed-switch v4, :pswitch_data_0

    .line 347
    :goto_2
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->usedKeyEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 332
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 337
    :pswitch_0
    iget v4, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->keyCode:I

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/InputProcessor;->keyDown(I)Z

    .line 338
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyJustPressed:Z

    .line 339
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->justPressedKeys:[Z

    iget v5, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->keyCode:I

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    goto :goto_2

    .line 396
    .end local v0    # "e":Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "processor":Lcom/badlogic/gdx/InputProcessor;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 342
    .restart local v0    # "e":Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    .restart local v3    # "processor":Lcom/badlogic/gdx/InputProcessor;
    :pswitch_1
    :try_start_1
    iget v4, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->keyCode:I

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/InputProcessor;->keyUp(I)Z

    goto :goto_2

    .line 345
    :pswitch_2
    iget-char v4, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->keyChar:C

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/InputProcessor;->keyTyped(C)Z

    goto :goto_2

    .line 350
    .end local v0    # "e":Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;
    :cond_1
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 351
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_5

    .line 352
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;

    .line 353
    .local v0, "e":Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;
    iget-wide v4, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->timeStamp:J

    iput-wide v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->currentEventTimeStamp:J

    .line 354
    iget v4, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->type:I

    packed-switch v4, :pswitch_data_1

    .line 371
    :goto_4
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->usedTouchEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 356
    :pswitch_3
    iget v4, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->x:I

    iget v5, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->y:I

    iget v6, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->pointer:I

    iget v7, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->button:I

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/InputProcessor;->touchDown(IIII)Z

    .line 357
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->justTouched:Z

    goto :goto_4

    .line 360
    :pswitch_4
    iget v4, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->x:I

    iget v5, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->y:I

    iget v6, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->pointer:I

    iget v7, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->button:I

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/InputProcessor;->touchUp(IIII)Z

    goto :goto_4

    .line 363
    :pswitch_5
    iget v4, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->x:I

    iget v5, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->y:I

    iget v6, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->pointer:I

    invoke-interface {v3, v4, v5, v6}, Lcom/badlogic/gdx/InputProcessor;->touchDragged(III)Z

    goto :goto_4

    .line 366
    :pswitch_6
    iget v4, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->x:I

    iget v5, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->y:I

    invoke-interface {v3, v4, v5}, Lcom/badlogic/gdx/InputProcessor;->mouseMoved(II)Z

    goto :goto_4

    .line 369
    :pswitch_7
    iget v4, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->scrollAmount:I

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/InputProcessor;->scrolled(I)Z

    goto :goto_4

    .line 374
    .end local v0    # "e":Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "processor":Lcom/badlogic/gdx/InputProcessor;
    :cond_2
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 375
    .restart local v2    # "len":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    if-ge v1, v2, :cond_4

    .line 376
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;

    .line 377
    .restart local v0    # "e":Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;
    iget v4, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->type:I

    if-nez v4, :cond_3

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->justTouched:Z

    .line 378
    :cond_3
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->usedTouchEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 375
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 381
    .end local v0    # "e":Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;
    :cond_4
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 382
    const/4 v1, 0x0

    :goto_6
    if-ge v1, v2, :cond_5

    .line 383
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->usedKeyEvents:Lcom/badlogic/gdx/utils/Pool;

    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 382
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 387
    :cond_5
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_6

    .line 388
    const/4 v1, 0x0

    :goto_7
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaX:[I

    array-length v4, v4

    if-ge v1, v4, :cond_6

    .line 389
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaX:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 390
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaY:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 388
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 394
    :cond_6
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 395
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 396
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    return-void

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 354
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method registerSensorListeners()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 656
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget-boolean v2, v2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useAccelerometer:Z

    if-eqz v2, :cond_3

    .line 657
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->context:Landroid/content/Context;

    const-string v3, "sensor"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->manager:Landroid/hardware/SensorManager;

    .line 658
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->manager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v7}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 659
    iput-boolean v6, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerAvailable:Z

    .line 669
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget-boolean v2, v2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useCompass:Z

    if-eqz v2, :cond_5

    .line 670
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->manager:Landroid/hardware/SensorManager;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->context:Landroid/content/Context;

    const-string v3, "sensor"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->manager:Landroid/hardware/SensorManager;

    .line 671
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->manager:Landroid/hardware/SensorManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 672
    .local v1, "sensor":Landroid/hardware/Sensor;
    if-eqz v1, :cond_4

    .line 673
    iget-boolean v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerAvailable:Z

    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->compassAvailable:Z

    .line 674
    iget-boolean v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->compassAvailable:Z

    if-eqz v2, :cond_1

    .line 675
    new-instance v2, Lcom/badlogic/gdx/backends/android/AndroidInput$SensorListener;

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->nativeOrientation:Lcom/badlogic/gdx/Input$Orientation;

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerValues:[F

    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->magneticFieldValues:[F

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/badlogic/gdx/backends/android/AndroidInput$SensorListener;-><init>(Lcom/badlogic/gdx/backends/android/AndroidInput;Lcom/badlogic/gdx/Input$Orientation;[F[F)V

    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->compassListener:Landroid/hardware/SensorEventListener;

    .line 676
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->manager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->compassListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3, v1, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->compassAvailable:Z

    .line 683
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    :cond_1
    :goto_1
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "AndroidInput"

    const-string v4, "sensor listener setup"

    invoke-interface {v2, v3, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    return-void

    .line 661
    :cond_2
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->manager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v7}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 662
    .local v0, "accelerometer":Landroid/hardware/Sensor;
    new-instance v2, Lcom/badlogic/gdx/backends/android/AndroidInput$SensorListener;

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->nativeOrientation:Lcom/badlogic/gdx/Input$Orientation;

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerValues:[F

    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->magneticFieldValues:[F

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/badlogic/gdx/backends/android/AndroidInput$SensorListener;-><init>(Lcom/badlogic/gdx/backends/android/AndroidInput;Lcom/badlogic/gdx/Input$Orientation;[F[F)V

    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerListener:Landroid/hardware/SensorEventListener;

    .line 663
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->manager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3, v0, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerAvailable:Z

    goto :goto_0

    .line 667
    .end local v0    # "accelerometer":Landroid/hardware/Sensor;
    :cond_3
    iput-boolean v6, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerAvailable:Z

    goto :goto_0

    .line 679
    .restart local v1    # "sensor":Landroid/hardware/Sensor;
    :cond_4
    iput-boolean v6, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->compassAvailable:Z

    goto :goto_1

    .line 682
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    :cond_5
    iput-boolean v6, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->compassAvailable:Z

    goto :goto_1
.end method

.method public setCatchBackKey(Z)V
    .locals 0
    .param p1, "catchBack"    # Z

    .prologue
    .line 563
    iput-boolean p1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->catchBack:Z

    .line 564
    return-void
.end method

.method public setCatchMenuKey(Z)V
    .locals 0
    .param p1, "catchMenu"    # Z

    .prologue
    .line 573
    iput-boolean p1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->catchMenu:Z

    .line 574
    return-void
.end method

.method public setCursorCatched(Z)V
    .locals 0
    .param p1, "catched"    # Z

    .prologue
    .line 791
    return-void
.end method

.method public setCursorImage(Lcom/badlogic/gdx/graphics/Pixmap;II)V
    .locals 0
    .param p1, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;
    .param p2, "xHotspot"    # I
    .param p3, "yHotspot"    # I

    .prologue
    .line 824
    return-void
.end method

.method public setCursorPosition(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 820
    return-void
.end method

.method public setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V
    .locals 1
    .param p1, "processor"    # Lcom/badlogic/gdx/InputProcessor;

    .prologue
    .line 313
    monitor-enter p0

    .line 314
    :try_start_0
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    .line 315
    monitor-exit p0

    .line 316
    return-void

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOnscreenKeyboardVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 546
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->handle:Landroid/os/Handler;

    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidInput$4;

    invoke-direct {v1, p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidInput$4;-><init>(Lcom/badlogic/gdx/backends/android/AndroidInput;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 559
    return-void
.end method

.method unregisterSensorListeners()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 687
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->manager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    .line 688
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->manager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 690
    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerListener:Landroid/hardware/SensorEventListener;

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->compassListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_1

    .line 693
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->manager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->compassListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 694
    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->compassListener:Landroid/hardware/SensorEventListener;

    .line 696
    :cond_1
    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->manager:Landroid/hardware/SensorManager;

    .line 698
    :cond_2
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AndroidInput"

    const-string v2, "sensor listener tear down"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    return-void
.end method

.method public vibrate(I)V
    .locals 4
    .param p1, "milliseconds"    # I

    .prologue
    .line 578
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->vibrator:Landroid/os/Vibrator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 579
    return-void
.end method

.method public vibrate([JI)V
    .locals 1
    .param p1, "pattern"    # [J
    .param p2, "repeat"    # I

    .prologue
    .line 583
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 584
    return-void
.end method
