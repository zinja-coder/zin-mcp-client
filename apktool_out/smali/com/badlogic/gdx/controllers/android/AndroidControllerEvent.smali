.class Lcom/badlogic/gdx/controllers/android/AndroidControllerEvent;
.super Ljava/lang/Object;
.source "AndroidControllerEvent.java"


# static fields
.field public static final AXIS:I = 0x2

.field public static final BUTTON_DOWN:I = 0x0

.field public static final BUTTON_UP:I = 0x1

.field public static final CONNECTED:I = 0x4

.field public static final DISCONNECTED:I = 0x5

.field public static final POV:I = 0x3


# instance fields
.field public axisValue:F

.field public code:I

.field public controller:Lcom/badlogic/gdx/controllers/android/AndroidController;

.field public povDirection:Lcom/badlogic/gdx/controllers/PovDirection;

.field public type:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
