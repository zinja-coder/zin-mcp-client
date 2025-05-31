.class public Lcom/badlogic/gdx/controllers/mappings/Ouya;
.super Ljava/lang/Object;
.source "Ouya.java"


# static fields
.field public static final AXIS_LEFT_TRIGGER:I = 0x2

.field public static final AXIS_LEFT_X:I = 0x0

.field public static final AXIS_LEFT_Y:I = 0x1

.field public static final AXIS_RIGHT_TRIGGER:I = 0x5

.field public static final AXIS_RIGHT_X:I = 0x3

.field public static final AXIS_RIGHT_Y:I = 0x4

.field public static final BUTTON_A:I = 0x61

.field public static final BUTTON_DPAD_DOWN:I = 0x14

.field public static final BUTTON_DPAD_LEFT:I = 0x15

.field public static final BUTTON_DPAD_RIGHT:I = 0x16

.field public static final BUTTON_DPAD_UP:I = 0x13

.field public static final BUTTON_L1:I = 0x68

.field public static final BUTTON_L2:I = 0x66

.field public static final BUTTON_L3:I = 0x6a

.field public static final BUTTON_MENU:I = 0x52

.field public static final BUTTON_O:I = 0x60

.field public static final BUTTON_R1:I = 0x69

.field public static final BUTTON_R2:I = 0x67

.field public static final BUTTON_R3:I = 0x6b

.field public static final BUTTON_U:I = 0x63

.field public static final BUTTON_Y:I = 0x64

.field public static final ID:Ljava/lang/String; = "OUYA Game Controller"

.field public static final STICK_DEADZONE:F = 0.25f

.field public static final runningOnOuya:Z

.field public static simulateRunningOnOuya:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 54
    sput-boolean v4, Lcom/badlogic/gdx/controllers/mappings/Ouya;->simulateRunningOnOuya:Z

    .line 57
    const/4 v3, 0x0

    .line 59
    .local v3, "isOuya":Z
    :try_start_0
    const-string v5, "android.os.Build"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 60
    .local v0, "buildClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "DEVICE"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 61
    .local v2, "deviceField":Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 62
    .local v1, "device":Ljava/lang/Object;
    const-string v5, "ouya_1_1"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "cardhu"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 65
    .end local v0    # "buildClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "device":Ljava/lang/Object;
    .end local v2    # "deviceField":Ljava/lang/reflect/Field;
    :goto_0
    sput-boolean v3, Lcom/badlogic/gdx/controllers/mappings/Ouya;->runningOnOuya:Z

    .line 66
    return-void

    .restart local v0    # "buildClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "device":Ljava/lang/Object;
    .restart local v2    # "deviceField":Ljava/lang/reflect/Field;
    :cond_1
    move v3, v4

    .line 62
    goto :goto_0

    .line 63
    .end local v0    # "buildClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "device":Ljava/lang/Object;
    .end local v2    # "deviceField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isRunningOnOuya()Z
    .locals 1

    .prologue
    .line 70
    sget-boolean v0, Lcom/badlogic/gdx/controllers/mappings/Ouya;->runningOnOuya:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/badlogic/gdx/controllers/mappings/Ouya;->simulateRunningOnOuya:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
