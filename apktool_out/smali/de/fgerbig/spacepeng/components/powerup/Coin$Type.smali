.class public final enum Lde/fgerbig/spacepeng/components/powerup/Coin$Type;
.super Ljava/lang/Enum;
.source "Coin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/fgerbig/spacepeng/components/powerup/Coin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lde/fgerbig/spacepeng/components/powerup/Coin$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/fgerbig/spacepeng/components/powerup/Coin$Type;

.field public static final enum DOUBLESHOT:Lde/fgerbig/spacepeng/components/powerup/Coin$Type;

.field public static final enum EXTRALIFE:Lde/fgerbig/spacepeng/components/powerup/Coin$Type;

.field public static final enum SHIELD:Lde/fgerbig/spacepeng/components/powerup/Coin$Type;


# instance fields
.field public final b:F

.field public final g:F

.field public final r:F

.field public final spriteName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v13, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    .line 27
    new-instance v0, Lde/fgerbig/spacepeng/components/powerup/Coin$Type;

    const-string v1, "EXTRALIFE"

    const-string v3, "coin"

    invoke-direct {v0, v1, v13, v3}, Lde/fgerbig/spacepeng/components/powerup/Coin$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lde/fgerbig/spacepeng/components/powerup/Coin$Type;->EXTRALIFE:Lde/fgerbig/spacepeng/components/powerup/Coin$Type;

    .line 28
    new-instance v0, Lde/fgerbig/spacepeng/components/powerup/Coin$Type;

    const-string v1, "SHIELD"

    const-string v3, "coin"

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lde/fgerbig/spacepeng/components/powerup/Coin$Type;-><init>(Ljava/lang/String;ILjava/lang/String;FFF)V

    sput-object v0, Lde/fgerbig/spacepeng/components/powerup/Coin$Type;->SHIELD:Lde/fgerbig/spacepeng/components/powerup/Coin$Type;

    .line 29
    new-instance v6, Lde/fgerbig/spacepeng/components/powerup/Coin$Type;

    const-string v7, "DOUBLESHOT"

    const-string v9, "coin"

    move v10, v5

    move v11, v4

    move v12, v4

    invoke-direct/range {v6 .. v12}, Lde/fgerbig/spacepeng/components/powerup/Coin$Type;-><init>(Ljava/lang/String;ILjava/lang/String;FFF)V

    sput-object v6, Lde/fgerbig/spacepeng/components/powerup/Coin$Type;->DOUBLESHOT:Lde/fgerbig/spacepeng/components/powerup/Coin$Type;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lde/fgerbig/spacepeng/components/powerup/Coin$Type;

    sget-object v1, Lde/fgerbig/spacepeng/components/powerup/Coin$Type;->EXTRALIFE:Lde/fgerbig/spacepeng/components/powerup/Coin$Type;

    aput-object v1, v0, v13

    sget-object v1, Lde/fgerbig/spacepeng/components/powerup/Coin$Type;->SHIELD:Lde/fgerbig/spacepeng/components/powerup/Coin$Type;

    aput-object v1, v0, v2

    sget-object v1, Lde/fgerbig/spacepeng/components/powerup/Coin$Type;->DOUBLESHOT:Lde/fgerbig/spacepeng/components/powerup/Coin$Type;

    aput-object v1, v0, v8

    sput-object v0, Lde/fgerbig/spacepeng/components/powerup/Coin$Type;->$VALUES:[Lde/fgerbig/spacepeng/components/powerup/Coin$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .param p3, "spriteName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 35
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lde/fgerbig/spacepeng/components/powerup/Coin$Type;-><init>(Ljava/lang/String;ILjava/lang/String;FFF)V

    .line 36
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;FFF)V
    .locals 0
    .param p3, "spriteName"    # Ljava/lang/String;
    .param p4, "r"    # F
    .param p5, "g"    # F
    .param p6, "b"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "FFF)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lde/fgerbig/spacepeng/components/powerup/Coin$Type;->spriteName:Ljava/lang/String;

    .line 40
    iput p4, p0, Lde/fgerbig/spacepeng/components/powerup/Coin$Type;->r:F

    .line 41
    iput p5, p0, Lde/fgerbig/spacepeng/components/powerup/Coin$Type;->g:F

    .line 42
    iput p6, p0, Lde/fgerbig/spacepeng/components/powerup/Coin$Type;->b:F

    .line 43
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lde/fgerbig/spacepeng/components/powerup/Coin$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lde/fgerbig/spacepeng/components/powerup/Coin$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lde/fgerbig/spacepeng/components/powerup/Coin$Type;

    return-object v0
.end method

.method public static values()[Lde/fgerbig/spacepeng/components/powerup/Coin$Type;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lde/fgerbig/spacepeng/components/powerup/Coin$Type;->$VALUES:[Lde/fgerbig/spacepeng/components/powerup/Coin$Type;

    invoke-virtual {v0}, [Lde/fgerbig/spacepeng/components/powerup/Coin$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/fgerbig/spacepeng/components/powerup/Coin$Type;

    return-object v0
.end method
