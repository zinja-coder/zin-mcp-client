.class public Lde/fgerbig/spacepeng/path/AlienBossAttackPathFunction;
.super Ljava/lang/Object;
.source "AlienBossAttackPathFunction.java"

# interfaces
.implements Lde/fgerbig/spacepeng/path/PathFunction;


# static fields
.field public static final id:Ljava/lang/String; = "bossAttack"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getXY(F)Lcom/badlogic/gdx/math/Vector2;
    .locals 4
    .param p1, "rad"    # F

    .prologue
    .line 29
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v2

    const/high16 v3, 0x44480000    # 800.0f

    mul-float/2addr v2, v3

    const v3, 0x3ecccccd    # 0.4f

    mul-float v0, v2, v3

    .line 30
    .local v0, "x":F
    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, p1

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v2

    const/high16 v3, 0x43f00000    # 480.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x42f00000    # 120.0f

    sub-float v1, v2, v3

    .line 32
    .local v1, "y":F
    new-instance v2, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v2, v0, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    return-object v2
.end method
