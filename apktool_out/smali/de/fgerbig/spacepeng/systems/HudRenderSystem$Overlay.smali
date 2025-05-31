.class public final enum Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;
.super Ljava/lang/Enum;
.source "HudRenderSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/fgerbig/spacepeng/systems/HudRenderSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Overlay"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;

.field public static final enum GAME_OVER:Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;

.field public static final enum LEVEL:Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;

.field public static final enum LEVEL_DONE:Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;

.field public static final enum NEW_HIGHSCORE:Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;

.field public static final enum NONE:Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;

.field public static final enum READY:Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    new-instance v0, Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;->NONE:Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;

    .line 45
    new-instance v0, Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;

    const-string v1, "LEVEL"

    invoke-direct {v0, v1, v4}, Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;->LEVEL:Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;

    .line 46
    new-instance v0, Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;

    const-string v1, "NEW_HIGHSCORE"

    invoke-direct {v0, v1, v5}, Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;->NEW_HIGHSCORE:Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;

    .line 47
    new-instance v0, Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;

    const-string v1, "READY"

    invoke-direct {v0, v1, v6}, Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;->READY:Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;

    .line 48
    new-instance v0, Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;

    const-string v1, "LEVEL_DONE"

    invoke-direct {v0, v1, v7}, Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;->LEVEL_DONE:Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;

    .line 49
    new-instance v0, Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;

    const-string v1, "GAME_OVER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;->GAME_OVER:Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;

    .line 43
    const/4 v0, 0x6

    new-array v0, v0, [Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;

    sget-object v1, Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;->NONE:Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;

    aput-object v1, v0, v3

    sget-object v1, Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;->LEVEL:Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;

    aput-object v1, v0, v4

    sget-object v1, Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;->NEW_HIGHSCORE:Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;

    aput-object v1, v0, v5

    sget-object v1, Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;->READY:Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;

    aput-object v1, v0, v6

    sget-object v1, Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;->LEVEL_DONE:Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;->GAME_OVER:Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;

    aput-object v2, v0, v1

    sput-object v0, Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;->$VALUES:[Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;

    return-object v0
.end method

.method public static values()[Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;->$VALUES:[Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;

    invoke-virtual {v0}, [Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/fgerbig/spacepeng/systems/HudRenderSystem$Overlay;

    return-object v0
.end method
