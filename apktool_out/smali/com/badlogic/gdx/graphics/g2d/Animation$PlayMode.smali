.class public final enum Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;
.super Ljava/lang/Enum;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

.field public static final enum LOOP:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

.field public static final enum LOOP_PINGPONG:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

.field public static final enum LOOP_RANDOM:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

.field public static final enum LOOP_REVERSED:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

.field public static final enum NORMAL:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

.field public static final enum REVERSED:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->NORMAL:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    .line 33
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    const-string v1, "REVERSED"

    invoke-direct {v0, v1, v4}, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->REVERSED:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    .line 34
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    const-string v1, "LOOP"

    invoke-direct {v0, v1, v5}, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->LOOP:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    .line 35
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    const-string v1, "LOOP_REVERSED"

    invoke-direct {v0, v1, v6}, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->LOOP_REVERSED:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    .line 36
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    const-string v1, "LOOP_PINGPONG"

    invoke-direct {v0, v1, v7}, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->LOOP_PINGPONG:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    .line 37
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    const-string v1, "LOOP_RANDOM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->LOOP_RANDOM:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    .line 31
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->NORMAL:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->REVERSED:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->LOOP:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->LOOP_REVERSED:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->LOOP_PINGPONG:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->LOOP_RANDOM:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->$VALUES:[Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->$VALUES:[Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    return-object v0
.end method
