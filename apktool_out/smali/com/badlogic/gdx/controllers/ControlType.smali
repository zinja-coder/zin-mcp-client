.class public final enum Lcom/badlogic/gdx/controllers/ControlType;
.super Ljava/lang/Enum;
.source "ControlType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/badlogic/gdx/controllers/ControlType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/controllers/ControlType;

.field public static final enum accelerometer:Lcom/badlogic/gdx/controllers/ControlType;

.field public static final enum axis:Lcom/badlogic/gdx/controllers/ControlType;

.field public static final enum button:Lcom/badlogic/gdx/controllers/ControlType;

.field public static final enum pov:Lcom/badlogic/gdx/controllers/ControlType;

.field public static final enum slider:Lcom/badlogic/gdx/controllers/ControlType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/badlogic/gdx/controllers/ControlType;

    const-string v1, "button"

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/controllers/ControlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/controllers/ControlType;->button:Lcom/badlogic/gdx/controllers/ControlType;

    new-instance v0, Lcom/badlogic/gdx/controllers/ControlType;

    const-string v1, "axis"

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/controllers/ControlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/controllers/ControlType;->axis:Lcom/badlogic/gdx/controllers/ControlType;

    new-instance v0, Lcom/badlogic/gdx/controllers/ControlType;

    const-string v1, "slider"

    invoke-direct {v0, v1, v4}, Lcom/badlogic/gdx/controllers/ControlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/controllers/ControlType;->slider:Lcom/badlogic/gdx/controllers/ControlType;

    new-instance v0, Lcom/badlogic/gdx/controllers/ControlType;

    const-string v1, "pov"

    invoke-direct {v0, v1, v5}, Lcom/badlogic/gdx/controllers/ControlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/controllers/ControlType;->pov:Lcom/badlogic/gdx/controllers/ControlType;

    new-instance v0, Lcom/badlogic/gdx/controllers/ControlType;

    const-string v1, "accelerometer"

    invoke-direct {v0, v1, v6}, Lcom/badlogic/gdx/controllers/ControlType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/controllers/ControlType;->accelerometer:Lcom/badlogic/gdx/controllers/ControlType;

    .line 20
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/badlogic/gdx/controllers/ControlType;

    sget-object v1, Lcom/badlogic/gdx/controllers/ControlType;->button:Lcom/badlogic/gdx/controllers/ControlType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/badlogic/gdx/controllers/ControlType;->axis:Lcom/badlogic/gdx/controllers/ControlType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/badlogic/gdx/controllers/ControlType;->slider:Lcom/badlogic/gdx/controllers/ControlType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/badlogic/gdx/controllers/ControlType;->pov:Lcom/badlogic/gdx/controllers/ControlType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/badlogic/gdx/controllers/ControlType;->accelerometer:Lcom/badlogic/gdx/controllers/ControlType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/badlogic/gdx/controllers/ControlType;->$VALUES:[Lcom/badlogic/gdx/controllers/ControlType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/controllers/ControlType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/badlogic/gdx/controllers/ControlType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/controllers/ControlType;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/controllers/ControlType;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/badlogic/gdx/controllers/ControlType;->$VALUES:[Lcom/badlogic/gdx/controllers/ControlType;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/controllers/ControlType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/controllers/ControlType;

    return-object v0
.end method
