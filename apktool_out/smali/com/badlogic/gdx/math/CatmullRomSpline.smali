.class public Lcom/badlogic/gdx/math/CatmullRomSpline;
.super Ljava/lang/Object;
.source "CatmullRomSpline.java"

# interfaces
.implements Lcom/badlogic/gdx/math/Path;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/badlogic/gdx/math/Vector",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/math/Path",
        "<TT;>;"
    }
.end annotation


# instance fields
.field public continuous:Z

.field public controlPoints:[Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public spanCount:I

.field private tmp:Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private tmp2:Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private tmp3:Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 103
    .local p0, "this":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method

.method public constructor <init>([Lcom/badlogic/gdx/math/Vector;Z)V
    .locals 0
    .param p2, "continuous"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;Z)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<TT;>;"
    .local p1, "controlPoints":[Lcom/badlogic/gdx/math/Vector;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/CatmullRomSpline;->set([Lcom/badlogic/gdx/math/Vector;Z)Lcom/badlogic/gdx/math/CatmullRomSpline;

    .line 108
    return-void
.end method

.method public static calculate(Lcom/badlogic/gdx/math/Vector;F[Lcom/badlogic/gdx/math/Vector;ZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 7
    .param p1, "t"    # F
    .param p3, "continuous"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/badlogic/gdx/math/Vector",
            "<TT;>;>(TT;F[TT;ZTT;)TT;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p2, "points":[Lcom/badlogic/gdx/math/Vector;, "[TT;"
    .local p4, "tmp":Lcom/badlogic/gdx/math/Vector;, "TT;"
    if-eqz p3, :cond_0

    array-length v6, p2

    .line 31
    .local v6, "n":I
    :goto_0
    int-to-float v0, v6

    mul-float v2, p1, v0

    .line 32
    .local v2, "u":F
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    add-int/lit8 v1, v6, -0x1

    .line 33
    .local v1, "i":I
    :goto_1
    int-to-float v0, v1

    sub-float/2addr v2, v0

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 34
    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/math/CatmullRomSpline;->calculate(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;ZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    return-object v0

    .line 30
    .end local v1    # "i":I
    .end local v2    # "u":F
    .end local v6    # "n":I
    :cond_0
    array-length v0, p2

    add-int/lit8 v6, v0, -0x3

    goto :goto_0

    .line 32
    .restart local v2    # "u":F
    .restart local v6    # "n":I
    :cond_1
    float-to-int v1, v2

    goto :goto_1
.end method

.method public static calculate(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;ZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 7
    .param p1, "i"    # I
    .param p2, "u"    # F
    .param p4, "continuous"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/badlogic/gdx/math/Vector",
            "<TT;>;>(TT;IF[TT;ZTT;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p3, "points":[Lcom/badlogic/gdx/math/Vector;, "[TT;"
    .local p5, "tmp":Lcom/badlogic/gdx/math/Vector;, "TT;"
    const/high16 v6, 0x3f000000    # 0.5f

    .line 47
    array-length v0, p3

    .line 48
    .local v0, "n":I
    mul-float v1, p2, p2

    .line 49
    .local v1, "u2":F
    mul-float v2, v1, p2

    .line 50
    .local v2, "u3":F
    aget-object v3, p3, p1

    invoke-interface {p0, v3}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v2

    const/high16 v5, 0x40200000    # 2.5f

    mul-float/2addr v5, v1

    sub-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    .line 51
    if-nez p4, :cond_0

    if-lez p1, :cond_1

    :cond_0
    add-int v3, v0, p1

    add-int/lit8 v3, v3, -0x1

    rem-int/2addr v3, v0

    aget-object v3, p3, v3

    invoke-interface {p5, v3}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    const/high16 v4, -0x41000000    # -0.5f

    mul-float/2addr v4, v2

    add-float/2addr v4, v1

    mul-float v5, v6, p2

    sub-float/2addr v4, v5

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    invoke-interface {p0, v3}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    .line 52
    :cond_1
    if-nez p4, :cond_2

    add-int/lit8 v3, v0, -0x1

    if-ge p1, v3, :cond_3

    :cond_2
    add-int/lit8 v3, p1, 0x1

    rem-int/2addr v3, v0

    aget-object v3, p3, v3

    invoke-interface {p5, v3}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    const/high16 v4, -0x40400000    # -1.5f

    mul-float/2addr v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    mul-float v5, v6, p2

    add-float/2addr v4, v5

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    invoke-interface {p0, v3}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    .line 53
    :cond_3
    if-nez p4, :cond_4

    add-int/lit8 v3, v0, -0x2

    if-ge p1, v3, :cond_5

    :cond_4
    add-int/lit8 v3, p1, 0x2

    rem-int/2addr v3, v0

    aget-object v3, p3, v3

    invoke-interface {p5, v3}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    mul-float v4, v6, v2

    mul-float v5, v6, v1

    sub-float/2addr v4, v5

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    invoke-interface {p0, v3}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    .line 54
    :cond_5
    return-object p0
.end method

.method public static derivative(Lcom/badlogic/gdx/math/Vector;F[Lcom/badlogic/gdx/math/Vector;ZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 7
    .param p1, "t"    # F
    .param p3, "continuous"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/badlogic/gdx/math/Vector",
            "<TT;>;>(TT;F[TT;ZTT;)TT;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p2, "points":[Lcom/badlogic/gdx/math/Vector;, "[TT;"
    .local p4, "tmp":Lcom/badlogic/gdx/math/Vector;, "TT;"
    if-eqz p3, :cond_0

    array-length v6, p2

    .line 67
    .local v6, "n":I
    :goto_0
    int-to-float v0, v6

    mul-float v2, p1, v0

    .line 68
    .local v2, "u":F
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    add-int/lit8 v1, v6, -0x1

    .line 69
    .local v1, "i":I
    :goto_1
    int-to-float v0, v1

    sub-float/2addr v2, v0

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 70
    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/math/CatmullRomSpline;->derivative(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;ZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    return-object v0

    .line 66
    .end local v1    # "i":I
    .end local v2    # "u":F
    .end local v6    # "n":I
    :cond_0
    array-length v0, p2

    add-int/lit8 v6, v0, -0x3

    goto :goto_0

    .line 68
    .restart local v2    # "u":F
    .restart local v6    # "n":I
    :cond_1
    float-to-int v1, v2

    goto :goto_1
.end method

.method public static derivative(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;ZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 7
    .param p1, "i"    # I
    .param p2, "u"    # F
    .param p4, "continuous"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/badlogic/gdx/math/Vector",
            "<TT;>;>(TT;IF[TT;ZTT;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p3, "points":[Lcom/badlogic/gdx/math/Vector;, "[TT;"
    .local p5, "tmp":Lcom/badlogic/gdx/math/Vector;, "TT;"
    const/high16 v6, 0x40900000    # 4.5f

    const/high16 v5, 0x3fc00000    # 1.5f

    .line 86
    array-length v0, p3

    .line 87
    .local v0, "n":I
    mul-float v1, p2, p2

    .line 89
    .local v1, "u2":F
    aget-object v2, p3, p1

    invoke-interface {p0, v2}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v2

    neg-float v3, p2

    const/high16 v4, 0x40a00000    # 5.0f

    mul-float/2addr v3, v4

    mul-float v4, v1, v6

    add-float/2addr v3, v4

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    .line 90
    if-nez p4, :cond_0

    if-lez p1, :cond_1

    :cond_0
    add-int v2, v0, p1

    add-int/lit8 v2, v2, -0x1

    rem-int/2addr v2, v0

    aget-object v2, p3, v2

    invoke-interface {p5, v2}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v2

    const/high16 v3, -0x41000000    # -0.5f

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    mul-float v4, v1, v5

    sub-float/2addr v3, v4

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    .line 91
    :cond_1
    if-nez p4, :cond_2

    add-int/lit8 v2, v0, -0x1

    if-ge p1, v2, :cond_3

    :cond_2
    add-int/lit8 v2, p1, 0x1

    rem-int/2addr v2, v0

    aget-object v2, p3, v2

    invoke-interface {p5, v2}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v2

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    mul-float v4, v1, v6

    sub-float/2addr v3, v4

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    .line 92
    :cond_3
    if-nez p4, :cond_4

    add-int/lit8 v2, v0, -0x2

    if-ge p1, v2, :cond_5

    :cond_4
    add-int/lit8 v2, p1, 0x2

    rem-int/2addr v2, v0

    aget-object v2, p3, v2

    invoke-interface {p5, v2}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v2

    neg-float v3, p2

    mul-float v4, v1, v5

    add-float/2addr v3, v4

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    .line 93
    :cond_5
    return-object p0
.end method


# virtual methods
.method public approxLength(I)F
    .locals 6
    .param p1, "samples"    # I

    .prologue
    .line 213
    .local p0, "this":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<TT;>;"
    const/4 v1, 0x0

    .line 214
    .local v1, "tempLength":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 215
    iget-object v2, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->tmp2:Lcom/badlogic/gdx/math/Vector;

    iget-object v3, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->tmp3:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    .line 216
    iget-object v2, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->tmp3:Lcom/badlogic/gdx/math/Vector;

    int-to-float v3, v0

    int-to-float v4, p1

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/math/CatmullRomSpline;->valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    .line 217
    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->tmp2:Lcom/badlogic/gdx/math/Vector;

    iget-object v3, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->tmp3:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/math/Vector;->dst(Lcom/badlogic/gdx/math/Vector;)F

    move-result v2

    add-float/2addr v1, v2

    .line 214
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_1
    return v1
.end method

.method public approximate(Lcom/badlogic/gdx/math/Vector;)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)F"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<TT;>;"
    .local p1, "v":Lcom/badlogic/gdx/math/Vector;, "TT;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/CatmullRomSpline;->nearest(Lcom/badlogic/gdx/math/Vector;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/math/CatmullRomSpline;->approximate(Lcom/badlogic/gdx/math/Vector;I)F

    move-result v0

    return v0
.end method

.method public approximate(Lcom/badlogic/gdx/math/Vector;I)F
    .locals 20
    .param p2, "near"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)F"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<TT;>;"
    .local p1, "in":Lcom/badlogic/gdx/math/Vector;, "TT;"
    move/from16 v11, p2

    .line 181
    .local v11, "n":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:[Lcom/badlogic/gdx/math/Vector;

    move-object/from16 v17, v0

    aget-object v12, v17, v11

    .line 182
    .local v12, "nearest":Lcom/badlogic/gdx/math/Vector;, "TT;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:[Lcom/badlogic/gdx/math/Vector;

    move-object/from16 v18, v0

    if-lez v11, :cond_0

    add-int/lit8 v17, v11, -0x1

    :goto_0
    aget-object v14, v18, v17

    .line 183
    .local v14, "previous":Lcom/badlogic/gdx/math/Vector;, "TT;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:[Lcom/badlogic/gdx/math/Vector;

    move-object/from16 v17, v0

    add-int/lit8 v18, v11, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->spanCount:I

    move/from16 v19, v0

    rem-int v18, v18, v19

    aget-object v13, v17, v18

    .line 184
    .local v13, "next":Lcom/badlogic/gdx/math/Vector;, "TT;"
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lcom/badlogic/gdx/math/Vector;->dst2(Lcom/badlogic/gdx/math/Vector;)F

    move-result v10

    .line 185
    .local v10, "dstPrev2":F
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lcom/badlogic/gdx/math/Vector;->dst2(Lcom/badlogic/gdx/math/Vector;)F

    move-result v9

    .line 187
    .local v9, "dstNext2":F
    cmpg-float v17, v9, v10

    if-gez v17, :cond_1

    .line 188
    move-object v6, v12

    .line 189
    .local v6, "P1":Lcom/badlogic/gdx/math/Vector;, "TT;"
    move-object v7, v13

    .line 190
    .local v7, "P2":Lcom/badlogic/gdx/math/Vector;, "TT;"
    move-object/from16 v8, p1

    .line 197
    .local v8, "P3":Lcom/badlogic/gdx/math/Vector;, "TT;"
    :goto_1
    invoke-interface {v6, v7}, Lcom/badlogic/gdx/math/Vector;->dst2(Lcom/badlogic/gdx/math/Vector;)F

    move-result v3

    .line 198
    .local v3, "L1Sqr":F
    invoke-interface {v8, v7}, Lcom/badlogic/gdx/math/Vector;->dst2(Lcom/badlogic/gdx/math/Vector;)F

    move-result v4

    .line 199
    .local v4, "L2Sqr":F
    invoke-interface {v8, v6}, Lcom/badlogic/gdx/math/Vector;->dst2(Lcom/badlogic/gdx/math/Vector;)F

    move-result v5

    .line 200
    .local v5, "L3Sqr":F
    float-to-double v0, v3

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v2, v0

    .line 201
    .local v2, "L1":F
    add-float v17, v4, v3

    sub-float v17, v17, v5

    const/high16 v18, 0x40000000    # 2.0f

    mul-float v18, v18, v2

    div-float v15, v17, v18

    .line 202
    .local v15, "s":F
    sub-float v17, v2, v15

    div-float v17, v17, v2

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-static/range {v17 .. v19}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v16

    .line 203
    .local v16, "u":F
    int-to-float v0, v11

    move/from16 v17, v0

    add-float v17, v17, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->spanCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    return v17

    .line 182
    .end local v2    # "L1":F
    .end local v3    # "L1Sqr":F
    .end local v4    # "L2Sqr":F
    .end local v5    # "L3Sqr":F
    .end local v6    # "P1":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .end local v7    # "P2":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .end local v8    # "P3":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .end local v9    # "dstNext2":F
    .end local v10    # "dstPrev2":F
    .end local v13    # "next":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .end local v14    # "previous":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .end local v15    # "s":F
    .end local v16    # "u":F
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->spanCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    goto :goto_0

    .line 192
    .restart local v9    # "dstNext2":F
    .restart local v10    # "dstPrev2":F
    .restart local v13    # "next":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .restart local v14    # "previous":Lcom/badlogic/gdx/math/Vector;, "TT;"
    :cond_1
    move-object v6, v14

    .line 193
    .restart local v6    # "P1":Lcom/badlogic/gdx/math/Vector;, "TT;"
    move-object v7, v12

    .line 194
    .restart local v7    # "P2":Lcom/badlogic/gdx/math/Vector;, "TT;"
    move-object/from16 v8, p1

    .line 195
    .restart local v8    # "P3":Lcom/badlogic/gdx/math/Vector;, "TT;"
    if-lez v11, :cond_2

    add-int/lit8 v11, v11, -0x1

    :goto_2
    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/math/CatmullRomSpline;->spanCount:I

    move/from16 v17, v0

    add-int/lit8 v11, v17, -0x1

    goto :goto_2
.end method

.method public approximate(Lcom/badlogic/gdx/math/Vector;II)F
    .locals 1
    .param p2, "start"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)F"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<TT;>;"
    .local p1, "in":Lcom/badlogic/gdx/math/Vector;, "TT;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/math/CatmullRomSpline;->nearest(Lcom/badlogic/gdx/math/Vector;II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/math/CatmullRomSpline;->approximate(Lcom/badlogic/gdx/math/Vector;I)F

    move-result v0

    return v0
.end method

.method public bridge synthetic approximate(Ljava/lang/Object;)F
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 20
    .local p0, "this":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<TT;>;"
    check-cast p1, Lcom/badlogic/gdx/math/Vector;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/CatmullRomSpline;->approximate(Lcom/badlogic/gdx/math/Vector;)F

    move-result v0

    return v0
.end method

.method public derivativeAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;
    .locals 4
    .param p2, "t"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)TT;"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "this":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<TT;>;"
    .local p1, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    iget v1, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->spanCount:I

    .line 137
    .local v1, "n":I
    int-to-float v3, v1

    mul-float v2, p2, v3

    .line 138
    .local v2, "u":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_0

    add-int/lit8 v0, v1, -0x1

    .line 139
    .local v0, "i":I
    :goto_0
    int-to-float v3, v0

    sub-float/2addr v2, v3

    .line 140
    invoke-virtual {p0, p1, v0, v2}, Lcom/badlogic/gdx/math/CatmullRomSpline;->derivativeAt(Lcom/badlogic/gdx/math/Vector;IF)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    return-object v3

    .line 138
    .end local v0    # "i":I
    :cond_0
    float-to-int v0, v2

    goto :goto_0
.end method

.method public derivativeAt(Lcom/badlogic/gdx/math/Vector;IF)Lcom/badlogic/gdx/math/Vector;
    .locals 6
    .param p2, "span"    # I
    .param p3, "u"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IF)TT;"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "this":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<TT;>;"
    .local p1, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->continuous:Z

    if-eqz v0, :cond_0

    move v1, p2

    :goto_0
    iget-object v3, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:[Lcom/badlogic/gdx/math/Vector;

    iget-boolean v4, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->continuous:Z

    iget-object v5, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->tmp:Lcom/badlogic/gdx/math/Vector;

    move-object v0, p1

    move v2, p3

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/math/CatmullRomSpline;->derivative(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;ZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v1, p2, 0x1

    goto :goto_0
.end method

.method public bridge synthetic derivativeAt(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # F

    .prologue
    .line 20
    .local p0, "this":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<TT;>;"
    check-cast p1, Lcom/badlogic/gdx/math/Vector;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/CatmullRomSpline;->derivativeAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    return-object v0
.end method

.method public locate(Lcom/badlogic/gdx/math/Vector;)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)F"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "this":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<TT;>;"
    .local p1, "v":Lcom/badlogic/gdx/math/Vector;, "TT;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/CatmullRomSpline;->approximate(Lcom/badlogic/gdx/math/Vector;)F

    move-result v0

    return v0
.end method

.method public bridge synthetic locate(Ljava/lang/Object;)F
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 20
    .local p0, "this":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<TT;>;"
    check-cast p1, Lcom/badlogic/gdx/math/Vector;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/CatmullRomSpline;->locate(Lcom/badlogic/gdx/math/Vector;)F

    move-result v0

    return v0
.end method

.method public nearest(Lcom/badlogic/gdx/math/Vector;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<TT;>;"
    .local p1, "in":Lcom/badlogic/gdx/math/Vector;, "TT;"
    const/4 v0, 0x0

    iget v1, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->spanCount:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/math/CatmullRomSpline;->nearest(Lcom/badlogic/gdx/math/Vector;II)I

    move-result v0

    return v0
.end method

.method public nearest(Lcom/badlogic/gdx/math/Vector;II)I
    .locals 7
    .param p2, "start"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)I"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "this":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<TT;>;"
    .local p1, "in":Lcom/badlogic/gdx/math/Vector;, "TT;"
    :goto_0
    if-gez p2, :cond_0

    .line 156
    iget v5, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->spanCount:I

    add-int/2addr p2, v5

    goto :goto_0

    .line 157
    :cond_0
    iget v5, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->spanCount:I

    rem-int v4, p2, v5

    .line 158
    .local v4, "result":I
    iget-object v5, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:[Lcom/badlogic/gdx/math/Vector;

    aget-object v5, v5, v4

    invoke-interface {p1, v5}, Lcom/badlogic/gdx/math/Vector;->dst2(Lcom/badlogic/gdx/math/Vector;)F

    move-result v1

    .line 159
    .local v1, "dst":F
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    if-ge v2, p3, :cond_2

    .line 160
    add-int v5, p2, v2

    iget v6, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->spanCount:I

    rem-int v3, v5, v6

    .line 161
    .local v3, "idx":I
    iget-object v5, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:[Lcom/badlogic/gdx/math/Vector;

    aget-object v5, v5, v3

    invoke-interface {p1, v5}, Lcom/badlogic/gdx/math/Vector;->dst2(Lcom/badlogic/gdx/math/Vector;)F

    move-result v0

    .line 162
    .local v0, "d":F
    cmpg-float v5, v0, v1

    if-gez v5, :cond_1

    .line 163
    move v1, v0

    .line 164
    move v4, v3

    .line 159
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 167
    .end local v0    # "d":F
    .end local v3    # "idx":I
    :cond_2
    return v4
.end method

.method public set([Lcom/badlogic/gdx/math/Vector;Z)Lcom/badlogic/gdx/math/CatmullRomSpline;
    .locals 2
    .param p2, "continuous"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;Z)",
            "Lcom/badlogic/gdx/math/CatmullRomSpline;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<TT;>;"
    .local p1, "controlPoints":[Lcom/badlogic/gdx/math/Vector;, "[TT;"
    const/4 v1, 0x0

    .line 111
    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->tmp:Lcom/badlogic/gdx/math/Vector;

    if-nez v0, :cond_0

    aget-object v0, p1, v1

    invoke-interface {v0}, Lcom/badlogic/gdx/math/Vector;->cpy()Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->tmp:Lcom/badlogic/gdx/math/Vector;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->tmp2:Lcom/badlogic/gdx/math/Vector;

    if-nez v0, :cond_1

    aget-object v0, p1, v1

    invoke-interface {v0}, Lcom/badlogic/gdx/math/Vector;->cpy()Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->tmp2:Lcom/badlogic/gdx/math/Vector;

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->tmp3:Lcom/badlogic/gdx/math/Vector;

    if-nez v0, :cond_2

    aget-object v0, p1, v1

    invoke-interface {v0}, Lcom/badlogic/gdx/math/Vector;->cpy()Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->tmp3:Lcom/badlogic/gdx/math/Vector;

    .line 114
    :cond_2
    iput-object p1, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:[Lcom/badlogic/gdx/math/Vector;

    .line 115
    iput-boolean p2, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->continuous:Z

    .line 116
    if-eqz p2, :cond_3

    array-length v0, p1

    :goto_0
    iput v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->spanCount:I

    .line 117
    return-object p0

    .line 116
    :cond_3
    array-length v0, p1

    add-int/lit8 v0, v0, -0x3

    goto :goto_0
.end method

.method public valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;
    .locals 4
    .param p2, "t"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)TT;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<TT;>;"
    .local p1, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    iget v1, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->spanCount:I

    .line 123
    .local v1, "n":I
    int-to-float v3, v1

    mul-float v2, p2, v3

    .line 124
    .local v2, "u":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_0

    add-int/lit8 v0, v1, -0x1

    .line 125
    .local v0, "i":I
    :goto_0
    int-to-float v3, v0

    sub-float/2addr v2, v3

    .line 126
    invoke-virtual {p0, p1, v0, v2}, Lcom/badlogic/gdx/math/CatmullRomSpline;->valueAt(Lcom/badlogic/gdx/math/Vector;IF)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    return-object v3

    .line 124
    .end local v0    # "i":I
    :cond_0
    float-to-int v0, v2

    goto :goto_0
.end method

.method public valueAt(Lcom/badlogic/gdx/math/Vector;IF)Lcom/badlogic/gdx/math/Vector;
    .locals 6
    .param p2, "span"    # I
    .param p3, "u"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IF)TT;"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<TT;>;"
    .local p1, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->continuous:Z

    if-eqz v0, :cond_0

    move v1, p2

    :goto_0
    iget-object v3, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->controlPoints:[Lcom/badlogic/gdx/math/Vector;

    iget-boolean v4, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->continuous:Z

    iget-object v5, p0, Lcom/badlogic/gdx/math/CatmullRomSpline;->tmp:Lcom/badlogic/gdx/math/Vector;

    move-object v0, p1

    move v2, p3

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/math/CatmullRomSpline;->calculate(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;ZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v1, p2, 0x1

    goto :goto_0
.end method

.method public bridge synthetic valueAt(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # F

    .prologue
    .line 20
    .local p0, "this":Lcom/badlogic/gdx/math/CatmullRomSpline;, "Lcom/badlogic/gdx/math/CatmullRomSpline<TT;>;"
    check-cast p1, Lcom/badlogic/gdx/math/Vector;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/CatmullRomSpline;->valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    return-object v0
.end method
