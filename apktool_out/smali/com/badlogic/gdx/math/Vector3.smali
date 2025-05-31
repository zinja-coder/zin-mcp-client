.class public Lcom/badlogic/gdx/math/Vector3;
.super Ljava/lang/Object;
.source "Vector3.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/badlogic/gdx/math/Vector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Lcom/badlogic/gdx/math/Vector",
        "<",
        "Lcom/badlogic/gdx/math/Vector3;",
        ">;"
    }
.end annotation


# static fields
.field public static final X:Lcom/badlogic/gdx/math/Vector3;

.field public static final Y:Lcom/badlogic/gdx/math/Vector3;

.field public static final Z:Lcom/badlogic/gdx/math/Vector3;

.field public static final Zero:Lcom/badlogic/gdx/math/Vector3;

.field private static final serialVersionUID:J = 0x354a9d4dc2f0cbeaL

.field private static final tmpMat:Lcom/badlogic/gdx/math/Matrix4;


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 35
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v2, v1, v1}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/badlogic/gdx/math/Vector3;->X:Lcom/badlogic/gdx/math/Vector3;

    .line 36
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v1, v2, v1}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/badlogic/gdx/math/Vector3;->Y:Lcom/badlogic/gdx/math/Vector3;

    .line 37
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v1, v1, v2}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/badlogic/gdx/math/Vector3;->Z:Lcom/badlogic/gdx/math/Vector3;

    .line 38
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, v1, v1, v1}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    sput-object v0, Lcom/badlogic/gdx/math/Vector3;->Zero:Lcom/badlogic/gdx/math/Vector3;

    .line 40
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/math/Vector3;->tmpMat:Lcom/badlogic/gdx/math/Matrix4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector2;F)V
    .locals 2
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "z"    # F

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v1, p2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector3;)V
    .locals 0
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 58
    return-void
.end method

.method public constructor <init>([F)V
    .locals 3
    .param p1, "values"    # [F

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 65
    return-void
.end method

.method public static dot(FFFFFF)F
    .locals 2
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "z1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "z2"    # F

    .prologue
    .line 282
    mul-float v0, p0, p3

    mul-float v1, p1, p4

    add-float/2addr v0, v1

    mul-float v1, p2, p5

    add-float/2addr v0, v1

    return v0
.end method

.method public static dst(FFFFFF)F
    .locals 6
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "z1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "z2"    # F

    .prologue
    .line 223
    sub-float v0, p3, p0

    .line 224
    .local v0, "a":F
    sub-float v1, p4, p1

    .line 225
    .local v1, "b":F
    sub-float v2, p5, p2

    .line 226
    .local v2, "c":F
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    return v3
.end method

.method public static dst2(FFFFFF)F
    .locals 5
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "z1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "z2"    # F

    .prologue
    .line 247
    sub-float v0, p3, p0

    .line 248
    .local v0, "a":F
    sub-float v1, p4, p1

    .line 249
    .local v1, "b":F
    sub-float v2, p5, p2

    .line 250
    .local v2, "c":F
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    return v3
.end method

.method public static len(FFF)F
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "z"    # F

    .prologue
    .line 197
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static len2(FFF)F
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "z"    # F

    .prologue
    .line 207
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public add(F)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "values"    # F

    .prologue
    .line 134
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v1, p1

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v2, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public add(FFF)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 126
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v1, p2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v2, p3

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 117
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public clamp(FF)Lcom/badlogic/gdx/math/Vector3;
    .locals 6
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 601
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector3;->len2()F

    move-result v0

    .line 602
    .local v0, "len2":F
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-nez v3, :cond_1

    .line 610
    .end local p0    # "this":Lcom/badlogic/gdx/math/Vector3;
    :cond_0
    :goto_0
    return-object p0

    .line 604
    .restart local p0    # "this":Lcom/badlogic/gdx/math/Vector3;
    :cond_1
    mul-float v1, p2, p2

    .line 605
    .local v1, "max2":F
    cmpl-float v3, v0, v1

    if-lez v3, :cond_2

    .line 606
    div-float v3, v1, v0

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p0

    goto :goto_0

    .line 607
    :cond_2
    mul-float v2, p1, p1

    .line 608
    .local v2, "min2":F
    cmpg-float v3, v0, v2

    if-gez v3, :cond_0

    .line 609
    div-float v3, v2, v0

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p0

    goto :goto_0
.end method

.method public bridge synthetic clamp(FF)Lcom/badlogic/gdx/math/Vector;
    .locals 1
    .param p1, "x0"    # F
    .param p2, "x1"    # F

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->clamp(FF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public cpy()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/math/Vector3;-><init>(Lcom/badlogic/gdx/math/Vector3;)V

    return-object v0
.end method

.method public bridge synthetic cpy()Lcom/badlogic/gdx/math/Vector;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector3;->cpy()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public crs(FFF)Lcom/badlogic/gdx/math/Vector3;
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 312
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v0, p3

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v1, p2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v2, p3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v2, p2

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v3, p1

    sub-float/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 5
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 303
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public dot(FFF)F
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 296
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    return v0
.end method

.method public dot(Lcom/badlogic/gdx/math/Vector3;)F
    .locals 3
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 287
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public bridge synthetic dot(Lcom/badlogic/gdx/math/Vector;)F
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    return v0
.end method

.method public dst(FFF)F
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 239
    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float v0, p1, v3

    .line 240
    .local v0, "a":F
    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float v1, p2, v3

    .line 241
    .local v1, "b":F
    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float v2, p3, v3

    .line 242
    .local v2, "c":F
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    return v3
.end method

.method public dst(Lcom/badlogic/gdx/math/Vector3;)F
    .locals 6
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 231
    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float v0, v3, v4

    .line 232
    .local v0, "a":F
    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float v1, v3, v4

    .line 233
    .local v1, "b":F
    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float v2, v3, v4

    .line 234
    .local v2, "c":F
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    return v3
.end method

.method public bridge synthetic dst(Lcom/badlogic/gdx/math/Vector;)F
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->dst(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    return v0
.end method

.method public dst2(FFF)F
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 267
    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float v0, p1, v3

    .line 268
    .local v0, "a":F
    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float v1, p2, v3

    .line 269
    .local v1, "b":F
    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float v2, p3, v3

    .line 270
    .local v2, "c":F
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    return v3
.end method

.method public dst2(Lcom/badlogic/gdx/math/Vector3;)F
    .locals 5
    .param p1, "point"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 255
    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float v0, v3, v4

    .line 256
    .local v0, "a":F
    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float v1, v3, v4

    .line 257
    .local v1, "b":F
    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float v2, v3, v4

    .line 258
    .local v2, "c":F
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    return v3
.end method

.method public bridge synthetic dst2(Lcom/badlogic/gdx/math/Vector;)F
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->dst2(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    return v0
.end method

.method public epsilonEquals(FFFF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "epsilon"    # F

    .prologue
    const/4 v0, 0x0

    .line 647
    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, p4

    if-lez v1, :cond_1

    .line 650
    :cond_0
    :goto_0
    return v0

    .line 648
    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, p4

    if-gtz v1, :cond_0

    .line 649
    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float v1, p3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, p4

    if-gtz v1, :cond_0

    .line 650
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public epsilonEquals(Lcom/badlogic/gdx/math/Vector3;F)Z
    .locals 3
    .param p1, "other"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "epsilon"    # F

    .prologue
    const/4 v0, 0x0

    .line 637
    if-nez p1, :cond_1

    .line 641
    :cond_0
    :goto_0
    return v0

    .line 638
    :cond_1
    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, p2

    if-gtz v1, :cond_0

    .line 639
    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, p2

    if-gtz v1, :cond_0

    .line 640
    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, p2

    if-gtz v1, :cond_0

    .line 641
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic epsilonEquals(Lcom/badlogic/gdx/math/Vector;F)Z
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;
    .param p2, "x1"    # F

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->epsilonEquals(Lcom/badlogic/gdx/math/Vector3;F)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 625
    if-ne p0, p1, :cond_1

    .line 632
    :cond_0
    :goto_0
    return v1

    .line 626
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 627
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 628
    check-cast v0, Lcom/badlogic/gdx/math/Vector3;

    .line 629
    .local v0, "other":Lcom/badlogic/gdx/math/Vector3;
    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v4}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 630
    :cond_4
    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v4}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 631
    :cond_5
    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-static {v4}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hasOppositeDirection(Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 2
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 524
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic hasOppositeDirection(Lcom/badlogic/gdx/math/Vector;)Z
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->hasOppositeDirection(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v0

    return v0
.end method

.method public hasSameDirection(Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 2
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 519
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic hasSameDirection(Lcom/badlogic/gdx/math/Vector;)Z
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->hasSameDirection(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 615
    const/16 v0, 0x1f

    .line 616
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 617
    .local v1, "result":I
    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    .line 618
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v3

    add-int v1, v2, v3

    .line 619
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-static {v3}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v3

    add-int v1, v2, v3

    .line 620
    return v1
.end method

.method public idt(Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 2
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 218
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public interpolate(Lcom/badlogic/gdx/math/Vector3;FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/math/Vector3;
    .locals 2
    .param p1, "target"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "alpha"    # F
    .param p3, "interpolator"    # Lcom/badlogic/gdx/math/Interpolation;

    .prologue
    .line 537
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p3, v0, v1, p2}, Lcom/badlogic/gdx/math/Interpolation;->apply(FFF)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/math/Vector3;->lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic interpolate(Lcom/badlogic/gdx/math/Vector;FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/math/Vector;
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;
    .param p2, "x1"    # F
    .param p3, "x2"    # Lcom/badlogic/gdx/math/Interpolation;

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector3;->interpolate(Lcom/badlogic/gdx/math/Vector3;FLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public isCollinear(Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 1
    .param p1, "other"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 494
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->isOnLine(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->hasSameDirection(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCollinear(Lcom/badlogic/gdx/math/Vector3;F)Z
    .locals 1
    .param p1, "other"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "epsilon"    # F

    .prologue
    .line 489
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->isOnLine(Lcom/badlogic/gdx/math/Vector3;F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->hasSameDirection(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isCollinear(Lcom/badlogic/gdx/math/Vector;)Z
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->isCollinear(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isCollinear(Lcom/badlogic/gdx/math/Vector;F)Z
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;
    .param p2, "x1"    # F

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->isCollinear(Lcom/badlogic/gdx/math/Vector3;F)Z

    move-result v0

    return v0
.end method

.method public isCollinearOpposite(Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 1
    .param p1, "other"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 504
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->isOnLine(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->hasOppositeDirection(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCollinearOpposite(Lcom/badlogic/gdx/math/Vector3;F)Z
    .locals 1
    .param p1, "other"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "epsilon"    # F

    .prologue
    .line 499
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->isOnLine(Lcom/badlogic/gdx/math/Vector3;F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->hasOppositeDirection(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isCollinearOpposite(Lcom/badlogic/gdx/math/Vector;)Z
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->isCollinearOpposite(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isCollinearOpposite(Lcom/badlogic/gdx/math/Vector;F)Z
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;
    .param p2, "x1"    # F

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->isCollinearOpposite(Lcom/badlogic/gdx/math/Vector3;F)Z

    move-result v0

    return v0
.end method

.method public isOnLine(Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 5
    .param p1, "other"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 484
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->len2(FFF)F

    move-result v0

    const v1, 0x358637bd    # 1.0E-6f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnLine(Lcom/badlogic/gdx/math/Vector3;F)Z
    .locals 5
    .param p1, "other"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "epsilon"    # F

    .prologue
    .line 479
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v4, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->len2(FFF)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isOnLine(Lcom/badlogic/gdx/math/Vector;)Z
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->isOnLine(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOnLine(Lcom/badlogic/gdx/math/Vector;F)Z
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;
    .param p2, "x1"    # F

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->isOnLine(Lcom/badlogic/gdx/math/Vector3;F)Z

    move-result v0

    return v0
.end method

.method public isPerpendicular(Lcom/badlogic/gdx/math/Vector3;)Z
    .locals 1
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 509
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->isZero(F)Z

    move-result v0

    return v0
.end method

.method public isPerpendicular(Lcom/badlogic/gdx/math/Vector3;F)Z
    .locals 1
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "epsilon"    # F

    .prologue
    .line 514
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v0

    invoke-static {v0, p2}, Lcom/badlogic/gdx/math/MathUtils;->isZero(FF)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isPerpendicular(Lcom/badlogic/gdx/math/Vector;)Z
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->isPerpendicular(Lcom/badlogic/gdx/math/Vector3;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isPerpendicular(Lcom/badlogic/gdx/math/Vector;F)Z
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;
    .param p2, "x1"    # F

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->isPerpendicular(Lcom/badlogic/gdx/math/Vector3;F)Z

    move-result v0

    return v0
.end method

.method public isUnit()Z
    .locals 1

    .prologue
    .line 459
    const v0, 0x3089705f    # 1.0E-9f

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Vector3;->isUnit(F)Z

    move-result v0

    return v0
.end method

.method public isUnit(F)Z
    .locals 2
    .param p1, "margin"    # F

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector3;->len2()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZero()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 469
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZero(F)Z
    .locals 1
    .param p1, "margin"    # F

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector3;->len2()F

    move-result v0

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public len()F
    .locals 3

    .prologue
    .line 202
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public len2()F
    .locals 3

    .prologue
    .line 212
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "target"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "alpha"    # F

    .prologue
    .line 529
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 530
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 531
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 532
    return-object p0
.end method

.method public bridge synthetic lerp(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;
    .param p2, "x1"    # F

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public limit(F)Lcom/badlogic/gdx/math/Vector3;
    .locals 1
    .param p1, "limit"    # F

    .prologue
    .line 574
    mul-float v0, p1, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Vector3;->limit2(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic limit(F)Lcom/badlogic/gdx/math/Vector;
    .locals 1
    .param p1, "x0"    # F

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->limit(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public limit2(F)Lcom/badlogic/gdx/math/Vector3;
    .locals 4
    .param p1, "limit2"    # F

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector3;->len2()F

    move-result v0

    .line 580
    .local v0, "len2":F
    cmpl-float v1, v0, p1

    if-lez v1, :cond_0

    .line 581
    div-float v1, p1, v0

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    .line 583
    :cond_0
    return-object p0
.end method

.method public bridge synthetic limit2(F)Lcom/badlogic/gdx/math/Vector;
    .locals 1
    .param p1, "x0"    # F

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->limit2(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public mul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 6
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix3;

    .prologue
    .line 348
    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    .line 349
    .local v0, "l_mat":[F
    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v2, 0x0

    aget v2, v0, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v3, 0x3

    aget v3, v0, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/4 v3, 0x6

    aget v3, v0, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v3, 0x1

    aget v3, v0, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v4, 0x4

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/4 v4, 0x7

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v4, 0x2

    aget v4, v0, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v5, 0x5

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v5, 0x8

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {p0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    return-object v1
.end method

.method public mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;
    .locals 6
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 328
    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 329
    .local v0, "l_mat":[F
    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v2, 0x0

    aget v2, v0, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v3, 0x4

    aget v3, v0, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v3, 0x8

    aget v3, v0, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xc

    aget v2, v0, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v3, 0x1

    aget v3, v0, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v4, 0x5

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v4, 0x9

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xd

    aget v3, v0, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v4, 0x2

    aget v4, v0, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v5, 0x6

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v5, 0xa

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/16 v4, 0xe

    aget v4, v0, v4

    add-float/2addr v3, v4

    invoke-virtual {p0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    return-object v1
.end method

.method public mul(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Vector3;
    .locals 1
    .param p1, "quat"    # Lcom/badlogic/gdx/math/Quaternion;

    .prologue
    .line 365
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/math/Quaternion;->transform(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public mul4x3([F)Lcom/badlogic/gdx/math/Vector3;
    .locals 5
    .param p1, "matrix"    # [F

    .prologue
    .line 320
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v1, 0x0

    aget v1, p1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v2, 0x3

    aget v2, p1, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/4 v2, 0x6

    aget v2, p1, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/16 v1, 0x9

    aget v1, p1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v2, 0x1

    aget v2, p1, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v3, 0x4

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/4 v3, 0x7

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0xa

    aget v2, p1, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v3, 0x2

    aget v3, p1, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v4, 0x5

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v4, 0x8

    aget v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xb

    aget v3, p1, v3

    add-float/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public mulAdd(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;
    .locals 2
    .param p1, "vec"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "scalar"    # F

    .prologue
    .line 181
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 182
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 183
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 184
    return-object p0
.end method

.method public mulAdd(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "vec"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "mulVec"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 189
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 190
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 191
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 192
    return-object p0
.end method

.method public bridge synthetic mulAdd(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;
    .param p2, "x1"    # F

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->mulAdd(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mulAdd(Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;
    .param p2, "x1"    # Lcom/badlogic/gdx/math/Vector;

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    check-cast p2, Lcom/badlogic/gdx/math/Vector3;

    .end local p2    # "x1":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Vector3;->mulAdd(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public nor()Lcom/badlogic/gdx/math/Vector3;
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 275
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector3;->len2()F

    move-result v0

    .line 276
    .local v0, "len2":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    cmpl-float v1, v0, v4

    if-nez v1, :cond_1

    .line 277
    .end local p0    # "this":Lcom/badlogic/gdx/math/Vector3;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/badlogic/gdx/math/Vector3;
    :cond_1
    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    div-float v1, v4, v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p0

    goto :goto_0
.end method

.method public bridge synthetic nor()Lcom/badlogic/gdx/math/Vector;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public prj(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;
    .locals 7
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 374
    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 375
    .local v0, "l_mat":[F
    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v4, 0x3

    aget v4, v0, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v5, 0x7

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v5, 0xb

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/16 v4, 0xf

    aget v4, v0, v4

    add-float/2addr v3, v4

    div-float v1, v2, v3

    .line 376
    .local v1, "l_w":F
    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v3, 0x0

    aget v3, v0, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v4, 0x4

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v4, 0x8

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/16 v3, 0xc

    aget v3, v0, v3

    add-float/2addr v2, v3

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v4, 0x1

    aget v4, v0, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v5, 0x5

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v5, 0x9

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/16 v4, 0xd

    aget v4, v0, v4

    add-float/2addr v3, v4

    mul-float/2addr v3, v1

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v5, 0x2

    aget v5, v0, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v6, 0x6

    aget v6, v0, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v6, 0xa

    aget v6, v0, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    const/16 v5, 0xe

    aget v5, v0, v5

    add-float/2addr v4, v5

    mul-float/2addr v4, v1

    invoke-virtual {p0, v2, v3, v4}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v2

    return-object v2
.end method

.method public rot(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;
    .locals 6
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 386
    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 387
    .local v0, "l_mat":[F
    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v2, 0x0

    aget v2, v0, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v3, 0x4

    aget v3, v0, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v3, 0x8

    aget v3, v0, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v3, 0x1

    aget v3, v0, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v4, 0x5

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v4, 0x9

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v4, 0x2

    aget v4, v0, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v5, 0x6

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v5, 0xa

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {p0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    return-object v1
.end method

.method public rotate(FFFF)Lcom/badlogic/gdx/math/Vector3;
    .locals 1
    .param p1, "degrees"    # F
    .param p2, "axisX"    # F
    .param p3, "axisY"    # F
    .param p4, "axisZ"    # F

    .prologue
    .line 423
    sget-object v0, Lcom/badlogic/gdx/math/Vector3;->tmpMat:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p2, p3, p4, p1}, Lcom/badlogic/gdx/math/Matrix4;->setToRotation(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public rotate(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;
    .locals 1
    .param p1, "axis"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "degrees"    # F

    .prologue
    .line 443
    sget-object v0, Lcom/badlogic/gdx/math/Vector3;->tmpMat:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Matrix4;->setToRotation(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    .line 444
    sget-object v0, Lcom/badlogic/gdx/math/Vector3;->tmpMat:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public rotateRad(FFFF)Lcom/badlogic/gdx/math/Vector3;
    .locals 1
    .param p1, "radians"    # F
    .param p2, "axisX"    # F
    .param p3, "axisY"    # F
    .param p4, "axisZ"    # F

    .prologue
    .line 434
    sget-object v0, Lcom/badlogic/gdx/math/Vector3;->tmpMat:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p2, p3, p4, p1}, Lcom/badlogic/gdx/math/Matrix4;->setToRotationRad(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public rotateRad(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;
    .locals 1
    .param p1, "axis"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "radians"    # F

    .prologue
    .line 453
    sget-object v0, Lcom/badlogic/gdx/math/Vector3;->tmpMat:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Matrix4;->setToRotationRad(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Matrix4;

    .line 454
    sget-object v0, Lcom/badlogic/gdx/math/Vector3;->tmpMat:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public scl(F)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "scalar"    # F

    .prologue
    .line 162
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v2, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public scl(FFF)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "vx"    # F
    .param p2, "vy"    # F
    .param p3, "vz"    # F

    .prologue
    .line 176
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v1, p2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v2, p3

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public scl(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 4
    .param p1, "other"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 167
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic scl(F)Lcom/badlogic/gdx/math/Vector;
    .locals 1
    .param p1, "x0"    # F

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic scl(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->scl(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public set(FFF)Lcom/badlogic/gdx/math/Vector3;
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 82
    iput p1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 83
    iput p2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 84
    iput p3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 85
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/math/Vector2;F)Lcom/badlogic/gdx/math/Vector3;
    .locals 2
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "z"    # F

    .prologue
    .line 107
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v1, p2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 90
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public set([F)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "values"    # [F

    .prologue
    .line 98
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public setLength(F)Lcom/badlogic/gdx/math/Vector3;
    .locals 1
    .param p1, "len"    # F

    .prologue
    .line 588
    mul-float v0, p1, p1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/math/Vector3;->setLength2(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setLength(F)Lcom/badlogic/gdx/math/Vector;
    .locals 1
    .param p1, "x0"    # F

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->setLength(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public setLength2(F)Lcom/badlogic/gdx/math/Vector3;
    .locals 4
    .param p1, "len2"    # F

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector3;->len2()F

    move-result v0

    .line 594
    .local v0, "oldLen2":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    cmpl-float v1, v0, p1

    if-nez v1, :cond_1

    .end local p0    # "this":Lcom/badlogic/gdx/math/Vector3;
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/badlogic/gdx/math/Vector3;
    :cond_1
    div-float v1, p1, v0

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v1, v2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object p0

    goto :goto_0
.end method

.method public bridge synthetic setLength2(F)Lcom/badlogic/gdx/math/Vector;
    .locals 1
    .param p1, "x0"    # F

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->setLength2(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public setZero()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 655
    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 656
    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 657
    iput v0, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 658
    return-object p0
.end method

.method public bridge synthetic setZero()Lcom/badlogic/gdx/math/Vector;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/badlogic/gdx/math/Vector3;->setZero()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public slerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;
    .locals 14
    .param p1, "target"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "alpha"    # F

    .prologue
    .line 547
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->dot(Lcom/badlogic/gdx/math/Vector3;)F

    move-result v1

    .line 549
    .local v1, "dot":F
    float-to-double v10, v1

    const-wide v12, 0x3feffbe76c8b4396L    # 0.9995

    cmpl-double v9, v10, v12

    if-gtz v9, :cond_0

    float-to-double v10, v1

    const-wide v12, -0x401004189374bc6aL    # -0.9995

    cmpg-double v9, v10, v12

    if-gez v9, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p2}, Lcom/badlogic/gdx/math/Vector3;->lerp(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    .line 563
    :goto_0
    return-object v9

    .line 552
    :cond_1
    float-to-double v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->acos(D)D

    move-result-wide v10

    double-to-float v5, v10

    .line 554
    .local v5, "theta0":F
    mul-float v4, v5, p2

    .line 556
    .local v4, "theta":F
    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v3, v10

    .line 557
    .local v3, "st":F
    iget v9, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v10, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    mul-float/2addr v10, v1

    sub-float v6, v9, v10

    .line 558
    .local v6, "tx":F
    iget v9, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v10, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    mul-float/2addr v10, v1

    sub-float v7, v9, v10

    .line 559
    .local v7, "ty":F
    iget v9, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v10, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    mul-float/2addr v10, v1

    sub-float v8, v9, v10

    .line 560
    .local v8, "tz":F
    mul-float v9, v6, v6

    mul-float v10, v7, v7

    add-float/2addr v9, v10

    mul-float v10, v8, v8

    add-float v2, v9, v10

    .line 561
    .local v2, "l2":F
    const v9, 0x38d1b717    # 1.0E-4f

    cmpg-float v9, v2, v9

    if-gez v9, :cond_2

    const/high16 v9, 0x3f800000    # 1.0f

    :goto_1
    mul-float v0, v3, v9

    .line 563
    .local v0, "dl":F
    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v9, v10

    invoke-virtual {p0, v9}, Lcom/badlogic/gdx/math/Vector3;->scl(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    mul-float v10, v6, v0

    mul-float v11, v7, v0

    mul-float v12, v8, v0

    invoke-virtual {v9, v10, v11, v12}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    move-result-object v9

    goto :goto_0

    .line 561
    .end local v0    # "dl":F
    :cond_2
    const/high16 v9, 0x3f800000    # 1.0f

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    div-float/2addr v9, v10

    goto :goto_1
.end method

.method public sub(F)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "value"    # F

    .prologue
    .line 157
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v2, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public sub(FFF)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 149
    iget v0, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v1, p2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    sub-float/2addr v2, p3

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 3
    .param p1, "a_vec"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 139
    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/math/Vector3;->sub(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sub(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/math/Vector;

    .prologue
    .line 25
    check-cast p1, Lcom/badlogic/gdx/math/Vector3;

    .end local p1    # "x0":Lcom/badlogic/gdx/math/Vector;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public traMul(Lcom/badlogic/gdx/math/Matrix3;)Lcom/badlogic/gdx/math/Vector3;
    .locals 6
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix3;

    .prologue
    .line 357
    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix3;->val:[F

    .line 358
    .local v0, "l_mat":[F
    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v2, 0x0

    aget v2, v0, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v3, 0x1

    aget v3, v0, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/4 v3, 0x2

    aget v3, v0, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v3, 0x3

    aget v3, v0, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v4, 0x4

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/4 v4, 0x5

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v4, 0x6

    aget v4, v0, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v5, 0x7

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v5, 0x8

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {p0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    return-object v1
.end method

.method public traMul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;
    .locals 6
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 338
    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 339
    .local v0, "l_mat":[F
    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v2, 0x0

    aget v2, v0, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v3, 0x1

    aget v3, v0, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/4 v3, 0x2

    aget v3, v0, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x3

    aget v2, v0, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v3, 0x4

    aget v3, v0, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v4, 0x5

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/4 v4, 0x6

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/4 v3, 0x7

    aget v3, v0, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/16 v4, 0x8

    aget v4, v0, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/16 v5, 0x9

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v5, 0xa

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/16 v4, 0xb

    aget v4, v0, v4

    add-float/2addr v3, v4

    invoke-virtual {p0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    return-object v1
.end method

.method public unrotate(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;
    .locals 6
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 396
    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 397
    .local v0, "l_mat":[F
    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v2, 0x0

    aget v2, v0, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v3, 0x1

    aget v3, v0, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/4 v3, 0x2

    aget v3, v0, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v3, 0x4

    aget v3, v0, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v4, 0x5

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/4 v4, 0x6

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/16 v4, 0x8

    aget v4, v0, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/16 v5, 0x9

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v5, 0xa

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {p0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    return-object v1
.end method

.method public untransform(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;
    .locals 6
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    const/16 v3, 0xc

    .line 407
    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 408
    .local v0, "l_mat":[F
    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    aget v2, v0, v3

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 409
    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    aget v2, v0, v3

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 410
    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    aget v2, v0, v3

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 411
    iget v1, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v2, 0x0

    aget v2, v0, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v3, 0x1

    aget v3, v0, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/4 v3, 0x2

    aget v3, v0, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/4 v3, 0x4

    aget v3, v0, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/4 v4, 0x5

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/4 v4, 0x6

    aget v4, v0, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/badlogic/gdx/math/Vector3;->x:F

    const/16 v4, 0x8

    aget v4, v0, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->y:F

    const/16 v5, 0x9

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/badlogic/gdx/math/Vector3;->z:F

    const/16 v5, 0xa

    aget v5, v0, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {p0, v1, v2, v3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v1

    return-object v1
.end method
