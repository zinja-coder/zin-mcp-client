.class public final enum Lcom/badlogic/gdx/Graphics$GraphicsType;
.super Ljava/lang/Enum;
.source "Graphics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/Graphics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GraphicsType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/badlogic/gdx/Graphics$GraphicsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/Graphics$GraphicsType;

.field public static final enum AndroidGL:Lcom/badlogic/gdx/Graphics$GraphicsType;

.field public static final enum Angle:Lcom/badlogic/gdx/Graphics$GraphicsType;

.field public static final enum JGLFW:Lcom/badlogic/gdx/Graphics$GraphicsType;

.field public static final enum LWJGL:Lcom/badlogic/gdx/Graphics$GraphicsType;

.field public static final enum Mock:Lcom/badlogic/gdx/Graphics$GraphicsType;

.field public static final enum WebGL:Lcom/badlogic/gdx/Graphics$GraphicsType;

.field public static final enum iOSGL:Lcom/badlogic/gdx/Graphics$GraphicsType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    new-instance v0, Lcom/badlogic/gdx/Graphics$GraphicsType;

    const-string v1, "AndroidGL"

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/Graphics$GraphicsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Graphics$GraphicsType;->AndroidGL:Lcom/badlogic/gdx/Graphics$GraphicsType;

    new-instance v0, Lcom/badlogic/gdx/Graphics$GraphicsType;

    const-string v1, "LWJGL"

    invoke-direct {v0, v1, v4}, Lcom/badlogic/gdx/Graphics$GraphicsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Graphics$GraphicsType;->LWJGL:Lcom/badlogic/gdx/Graphics$GraphicsType;

    new-instance v0, Lcom/badlogic/gdx/Graphics$GraphicsType;

    const-string v1, "Angle"

    invoke-direct {v0, v1, v5}, Lcom/badlogic/gdx/Graphics$GraphicsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Graphics$GraphicsType;->Angle:Lcom/badlogic/gdx/Graphics$GraphicsType;

    new-instance v0, Lcom/badlogic/gdx/Graphics$GraphicsType;

    const-string v1, "WebGL"

    invoke-direct {v0, v1, v6}, Lcom/badlogic/gdx/Graphics$GraphicsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Graphics$GraphicsType;->WebGL:Lcom/badlogic/gdx/Graphics$GraphicsType;

    new-instance v0, Lcom/badlogic/gdx/Graphics$GraphicsType;

    const-string v1, "iOSGL"

    invoke-direct {v0, v1, v7}, Lcom/badlogic/gdx/Graphics$GraphicsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Graphics$GraphicsType;->iOSGL:Lcom/badlogic/gdx/Graphics$GraphicsType;

    new-instance v0, Lcom/badlogic/gdx/Graphics$GraphicsType;

    const-string v1, "JGLFW"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/Graphics$GraphicsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Graphics$GraphicsType;->JGLFW:Lcom/badlogic/gdx/Graphics$GraphicsType;

    new-instance v0, Lcom/badlogic/gdx/Graphics$GraphicsType;

    const-string v1, "Mock"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/Graphics$GraphicsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/Graphics$GraphicsType;->Mock:Lcom/badlogic/gdx/Graphics$GraphicsType;

    .line 47
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/badlogic/gdx/Graphics$GraphicsType;

    sget-object v1, Lcom/badlogic/gdx/Graphics$GraphicsType;->AndroidGL:Lcom/badlogic/gdx/Graphics$GraphicsType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/badlogic/gdx/Graphics$GraphicsType;->LWJGL:Lcom/badlogic/gdx/Graphics$GraphicsType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/badlogic/gdx/Graphics$GraphicsType;->Angle:Lcom/badlogic/gdx/Graphics$GraphicsType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/badlogic/gdx/Graphics$GraphicsType;->WebGL:Lcom/badlogic/gdx/Graphics$GraphicsType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/badlogic/gdx/Graphics$GraphicsType;->iOSGL:Lcom/badlogic/gdx/Graphics$GraphicsType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/badlogic/gdx/Graphics$GraphicsType;->JGLFW:Lcom/badlogic/gdx/Graphics$GraphicsType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/badlogic/gdx/Graphics$GraphicsType;->Mock:Lcom/badlogic/gdx/Graphics$GraphicsType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/badlogic/gdx/Graphics$GraphicsType;->$VALUES:[Lcom/badlogic/gdx/Graphics$GraphicsType;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/Graphics$GraphicsType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    const-class v0, Lcom/badlogic/gdx/Graphics$GraphicsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/Graphics$GraphicsType;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/Graphics$GraphicsType;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/badlogic/gdx/Graphics$GraphicsType;->$VALUES:[Lcom/badlogic/gdx/Graphics$GraphicsType;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/Graphics$GraphicsType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/Graphics$GraphicsType;

    return-object v0
.end method
