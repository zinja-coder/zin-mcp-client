.class public final enum Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;
.super Ljava/lang/Enum;
.source "PlayerInputSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/fgerbig/spacepeng/systems/PlayerInputSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FireState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;

.field public static final enum ALLOW:Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;

.field public static final enum BLOCKED:Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;

.field public static final enum CONTINUE:Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;

    const-string v1, "ALLOW"

    invoke-direct {v0, v1, v2}, Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;->ALLOW:Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;

    .line 48
    new-instance v0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;

    const-string v1, "CONTINUE"

    invoke-direct {v0, v1, v3}, Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;->CONTINUE:Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;

    .line 49
    new-instance v0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;

    const-string v1, "BLOCKED"

    invoke-direct {v0, v1, v4}, Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;->BLOCKED:Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;

    sget-object v1, Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;->ALLOW:Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;

    aput-object v1, v0, v2

    sget-object v1, Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;->CONTINUE:Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;

    aput-object v1, v0, v3

    sget-object v1, Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;->BLOCKED:Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;

    aput-object v1, v0, v4

    sput-object v0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;->$VALUES:[Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;

    return-object v0
.end method

.method public static values()[Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;->$VALUES:[Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;

    invoke-virtual {v0}, [Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/fgerbig/spacepeng/systems/PlayerInputSystem$FireState;

    return-object v0
.end method
