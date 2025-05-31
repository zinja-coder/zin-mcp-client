.class public Lcom/badlogic/gdx/math/BSpline;
.super Ljava/lang/Object;
.source "BSpline.java"

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


# static fields
.field private static final d6:F = 0.16666667f


# instance fields
.field public continuous:Z

.field public controlPoints:[Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public degree:I

.field public knots:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;"
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
    .line 178
    .local p0, "this":Lcom/badlogic/gdx/math/BSpline;, "Lcom/badlogic/gdx/math/BSpline<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    return-void
.end method

.method public constructor <init>([Lcom/badlogic/gdx/math/Vector;IZ)V
    .locals 0
    .param p2, "degree"    # I
    .param p3, "continuous"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;IZ)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "this":Lcom/badlogic/gdx/math/BSpline;, "Lcom/badlogic/gdx/math/BSpline<TT;>;"
    .local p1, "controlPoints":[Lcom/badlogic/gdx/math/Vector;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/math/BSpline;->set([Lcom/badlogic/gdx/math/Vector;IZ)Lcom/badlogic/gdx/math/BSpline;

    .line 183
    return-void
.end method

.method public static calculate(Lcom/badlogic/gdx/math/Vector;F[Lcom/badlogic/gdx/math/Vector;IZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 8
    .param p1, "t"    # F
    .param p3, "degree"    # I
    .param p4, "continuous"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/badlogic/gdx/math/Vector",
            "<TT;>;>(TT;F[TT;IZTT;)TT;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p2, "points":[Lcom/badlogic/gdx/math/Vector;, "[TT;"
    .local p5, "tmp":Lcom/badlogic/gdx/math/Vector;, "TT;"
    if-eqz p4, :cond_0

    array-length v7, p2

    .line 110
    .local v7, "n":I
    :goto_0
    int-to-float v0, v7

    mul-float v2, p1, v0

    .line 111
    .local v2, "u":F
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    add-int/lit8 v1, v7, -0x1

    .line 112
    .local v1, "i":I
    :goto_1
    int-to-float v0, v1

    sub-float/2addr v2, v0

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 113
    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/math/BSpline;->calculate(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;IZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    return-object v0

    .line 109
    .end local v1    # "i":I
    .end local v2    # "u":F
    .end local v7    # "n":I
    :cond_0
    array-length v0, p2

    sub-int v7, v0, p3

    goto :goto_0

    .line 111
    .restart local v2    # "u":F
    .restart local v7    # "n":I
    :cond_1
    float-to-int v1, v2

    goto :goto_1
.end method

.method public static calculate(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;IZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 6
    .param p1, "i"    # I
    .param p2, "u"    # F
    .param p4, "degree"    # I
    .param p5, "continuous"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/badlogic/gdx/math/Vector",
            "<TT;>;>(TT;IF[TT;IZTT;)TT;"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p3, "points":[Lcom/badlogic/gdx/math/Vector;, "[TT;"
    .local p6, "tmp":Lcom/badlogic/gdx/math/Vector;, "TT;"
    packed-switch p4, :pswitch_data_0

    .line 148
    .end local p0    # "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    :goto_0
    return-object p0

    .restart local p0    # "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    :pswitch_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p5

    move-object v5, p6

    .line 146
    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/math/BSpline;->cubic(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;ZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object p0

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public static cubic(Lcom/badlogic/gdx/math/Vector;F[Lcom/badlogic/gdx/math/Vector;ZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
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
    .line 34
    .local p0, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p2, "points":[Lcom/badlogic/gdx/math/Vector;, "[TT;"
    .local p4, "tmp":Lcom/badlogic/gdx/math/Vector;, "TT;"
    if-eqz p3, :cond_0

    array-length v6, p2

    .line 35
    .local v6, "n":I
    :goto_0
    int-to-float v0, v6

    mul-float v2, p1, v0

    .line 36
    .local v2, "u":F
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    add-int/lit8 v1, v6, -0x1

    .line 37
    .local v1, "i":I
    :goto_1
    int-to-float v0, v1

    sub-float/2addr v2, v0

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 38
    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/math/BSpline;->cubic(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;ZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    return-object v0

    .line 34
    .end local v1    # "i":I
    .end local v2    # "u":F
    .end local v6    # "n":I
    :cond_0
    array-length v0, p2

    add-int/lit8 v6, v0, -0x3

    goto :goto_0

    .line 36
    .restart local v2    # "u":F
    .restart local v6    # "n":I
    :cond_1
    float-to-int v1, v2

    goto :goto_1
.end method

.method public static cubic(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;ZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 10
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
    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v8, 0x40400000    # 3.0f

    const v7, 0x3e2aaaab

    .line 67
    array-length v1, p3

    .line 68
    .local v1, "n":I
    sub-float v0, v9, p2

    .line 69
    .local v0, "dt":F
    mul-float v2, p2, p2

    .line 70
    .local v2, "t2":F
    mul-float v3, v2, p2

    .line 71
    .local v3, "t3":F
    aget-object v4, p3, p1

    invoke-interface {p0, v4}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    mul-float v5, v8, v3

    const/high16 v6, 0x40c00000    # 6.0f

    mul-float/2addr v6, v2

    sub-float/2addr v5, v6

    const/high16 v6, 0x40800000    # 4.0f

    add-float/2addr v5, v6

    mul-float/2addr v5, v7

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    .line 72
    if-nez p4, :cond_0

    if-lez p1, :cond_1

    :cond_0
    add-int v4, v1, p1

    add-int/lit8 v4, v4, -0x1

    rem-int/2addr v4, v1

    aget-object v4, p3, v4

    invoke-interface {p5, v4}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    mul-float v5, v0, v0

    mul-float/2addr v5, v0

    mul-float/2addr v5, v7

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    .line 73
    :cond_1
    if-nez p4, :cond_2

    add-int/lit8 v4, v1, -0x1

    if-ge p1, v4, :cond_3

    :cond_2
    add-int/lit8 v4, p1, 0x1

    rem-int/2addr v4, v1

    aget-object v4, p3, v4

    invoke-interface {p5, v4}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    const/high16 v5, -0x3fc00000    # -3.0f

    mul-float/2addr v5, v3

    mul-float v6, v8, v2

    add-float/2addr v5, v6

    mul-float v6, v8, p2

    add-float/2addr v5, v6

    add-float/2addr v5, v9

    mul-float/2addr v5, v7

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    .line 74
    :cond_3
    if-nez p4, :cond_4

    add-int/lit8 v4, v1, -0x2

    if-ge p1, v4, :cond_5

    :cond_4
    add-int/lit8 v4, p1, 0x2

    rem-int/2addr v4, v1

    aget-object v4, p3, v4

    invoke-interface {p5, v4}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    mul-float v5, v3, v7

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    .line 75
    :cond_5
    return-object p0
.end method

.method public static cubic_derivative(Lcom/badlogic/gdx/math/Vector;F[Lcom/badlogic/gdx/math/Vector;ZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
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
    .line 50
    .local p0, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p2, "points":[Lcom/badlogic/gdx/math/Vector;, "[TT;"
    .local p4, "tmp":Lcom/badlogic/gdx/math/Vector;, "TT;"
    if-eqz p3, :cond_0

    array-length v6, p2

    .line 51
    .local v6, "n":I
    :goto_0
    int-to-float v0, v6

    mul-float v2, p1, v0

    .line 52
    .local v2, "u":F
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    add-int/lit8 v1, v6, -0x1

    .line 53
    .local v1, "i":I
    :goto_1
    int-to-float v0, v1

    sub-float/2addr v2, v0

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 54
    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/math/BSpline;->cubic(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;ZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    return-object v0

    .line 50
    .end local v1    # "i":I
    .end local v2    # "u":F
    .end local v6    # "n":I
    :cond_0
    array-length v0, p2

    add-int/lit8 v6, v0, -0x3

    goto :goto_0

    .line 52
    .restart local v2    # "u":F
    .restart local v6    # "n":I
    :cond_1
    float-to-int v1, v2

    goto :goto_1
.end method

.method public static cubic_derivative(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;ZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 9
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
    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    .line 88
    array-length v1, p3

    .line 89
    .local v1, "n":I
    sub-float v0, v8, p2

    .line 90
    .local v0, "dt":F
    mul-float v2, p2, p2

    .line 91
    .local v2, "t2":F
    mul-float v3, v2, p2

    .line 92
    .local v3, "t3":F
    aget-object v4, p3, p1

    invoke-interface {p0, v4}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v5, v2

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, p2

    sub-float/2addr v5, v6

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    .line 93
    if-nez p4, :cond_0

    if-lez p1, :cond_1

    :cond_0
    add-int v4, v1, p1

    add-int/lit8 v4, v4, -0x1

    rem-int/2addr v4, v1

    aget-object v4, p3, v4

    invoke-interface {p5, v4}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    sub-float v5, v8, p2

    mul-float/2addr v5, v7

    sub-float v6, v8, p2

    mul-float/2addr v5, v6

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    .line 94
    :cond_1
    if-nez p4, :cond_2

    add-int/lit8 v4, v1, -0x1

    if-ge p1, v4, :cond_3

    :cond_2
    add-int/lit8 v4, p1, 0x1

    rem-int/2addr v4, v1

    aget-object v4, p3, v4

    invoke-interface {p5, v4}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    const/high16 v5, -0x40400000    # -1.5f

    mul-float/2addr v5, v2

    add-float/2addr v5, p2

    add-float/2addr v5, v7

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    .line 95
    :cond_3
    if-nez p4, :cond_4

    add-int/lit8 v4, v1, -0x2

    if-ge p1, v4, :cond_5

    :cond_4
    add-int/lit8 v4, p1, 0x2

    rem-int/2addr v4, v1

    aget-object v4, p3, v4

    invoke-interface {p5, v4}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    mul-float v5, v7, v2

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    .line 96
    :cond_5
    return-object p0
.end method

.method public static derivative(Lcom/badlogic/gdx/math/Vector;F[Lcom/badlogic/gdx/math/Vector;IZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 8
    .param p1, "t"    # F
    .param p3, "degree"    # I
    .param p4, "continuous"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/badlogic/gdx/math/Vector",
            "<TT;>;>(TT;F[TT;IZTT;)TT;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p2, "points":[Lcom/badlogic/gdx/math/Vector;, "[TT;"
    .local p5, "tmp":Lcom/badlogic/gdx/math/Vector;, "TT;"
    if-eqz p4, :cond_0

    array-length v7, p2

    .line 127
    .local v7, "n":I
    :goto_0
    int-to-float v0, v7

    mul-float v2, p1, v0

    .line 128
    .local v2, "u":F
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    add-int/lit8 v1, v7, -0x1

    .line 129
    .local v1, "i":I
    :goto_1
    int-to-float v0, v1

    sub-float/2addr v2, v0

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 130
    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/math/BSpline;->derivative(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;IZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    return-object v0

    .line 126
    .end local v1    # "i":I
    .end local v2    # "u":F
    .end local v7    # "n":I
    :cond_0
    array-length v0, p2

    sub-int v7, v0, p3

    goto :goto_0

    .line 128
    .restart local v2    # "u":F
    .restart local v7    # "n":I
    :cond_1
    float-to-int v1, v2

    goto :goto_1
.end method

.method public static derivative(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;IZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 6
    .param p1, "i"    # I
    .param p2, "u"    # F
    .param p4, "degree"    # I
    .param p5, "continuous"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/badlogic/gdx/math/Vector",
            "<TT;>;>(TT;IF[TT;IZTT;)TT;"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p3, "points":[Lcom/badlogic/gdx/math/Vector;, "[TT;"
    .local p6, "tmp":Lcom/badlogic/gdx/math/Vector;, "TT;"
    packed-switch p4, :pswitch_data_0

    .line 166
    .end local p0    # "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    :goto_0
    return-object p0

    .restart local p0    # "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    :pswitch_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p5

    move-object v5, p6

    .line 164
    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/math/BSpline;->cubic_derivative(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;ZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object p0

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public approxLength(I)F
    .locals 6
    .param p1, "samples"    # I

    .prologue
    .line 299
    .local p0, "this":Lcom/badlogic/gdx/math/BSpline;, "Lcom/badlogic/gdx/math/BSpline<TT;>;"
    const/4 v1, 0x0

    .line 300
    .local v1, "tempLength":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 301
    iget-object v2, p0, Lcom/badlogic/gdx/math/BSpline;->tmp2:Lcom/badlogic/gdx/math/Vector;

    iget-object v3, p0, Lcom/badlogic/gdx/math/BSpline;->tmp3:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    .line 302
    iget-object v2, p0, Lcom/badlogic/gdx/math/BSpline;->tmp3:Lcom/badlogic/gdx/math/Vector;

    int-to-float v3, v0

    int-to-float v4, p1

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/math/BSpline;->valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    .line 303
    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/math/BSpline;->tmp2:Lcom/badlogic/gdx/math/Vector;

    iget-object v3, p0, Lcom/badlogic/gdx/math/BSpline;->tmp3:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/math/Vector;->dst(Lcom/badlogic/gdx/math/Vector;)F

    move-result v2

    add-float/2addr v1, v2

    .line 300
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
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
    .line 257
    .local p0, "this":Lcom/badlogic/gdx/math/BSpline;, "Lcom/badlogic/gdx/math/BSpline<TT;>;"
    .local p1, "v":Lcom/badlogic/gdx/math/Vector;, "TT;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/BSpline;->nearest(Lcom/badlogic/gdx/math/Vector;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/math/BSpline;->approximate(Lcom/badlogic/gdx/math/Vector;I)F

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
    .line 265
    .local p0, "this":Lcom/badlogic/gdx/math/BSpline;, "Lcom/badlogic/gdx/math/BSpline<TT;>;"
    .local p1, "in":Lcom/badlogic/gdx/math/Vector;, "TT;"
    move/from16 v11, p2

    .line 266
    .local v11, "n":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/math/BSpline;->knots:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/badlogic/gdx/math/Vector;

    .line 267
    .local v12, "nearest":Lcom/badlogic/gdx/math/Vector;, "TT;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/math/BSpline;->knots:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v18, v0

    if-lez v11, :cond_0

    add-int/lit8 v17, v11, -0x1

    :goto_0
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/badlogic/gdx/math/Vector;

    .line 268
    .local v14, "previous":Lcom/badlogic/gdx/math/Vector;, "TT;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/math/BSpline;->knots:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v17, v0

    add-int/lit8 v18, v11, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/math/BSpline;->spanCount:I

    move/from16 v19, v0

    rem-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/badlogic/gdx/math/Vector;

    .line 269
    .local v13, "next":Lcom/badlogic/gdx/math/Vector;, "TT;"
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lcom/badlogic/gdx/math/Vector;->dst2(Lcom/badlogic/gdx/math/Vector;)F

    move-result v10

    .line 270
    .local v10, "dstPrev2":F
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lcom/badlogic/gdx/math/Vector;->dst2(Lcom/badlogic/gdx/math/Vector;)F

    move-result v9

    .line 272
    .local v9, "dstNext2":F
    cmpg-float v17, v9, v10

    if-gez v17, :cond_1

    .line 273
    move-object v6, v12

    .line 274
    .local v6, "P1":Lcom/badlogic/gdx/math/Vector;, "TT;"
    move-object v7, v13

    .line 275
    .local v7, "P2":Lcom/badlogic/gdx/math/Vector;, "TT;"
    move-object/from16 v8, p1

    .line 282
    .local v8, "P3":Lcom/badlogic/gdx/math/Vector;, "TT;"
    :goto_1
    invoke-interface {v6, v7}, Lcom/badlogic/gdx/math/Vector;->dst2(Lcom/badlogic/gdx/math/Vector;)F

    move-result v3

    .line 283
    .local v3, "L1Sqr":F
    invoke-interface {v8, v7}, Lcom/badlogic/gdx/math/Vector;->dst2(Lcom/badlogic/gdx/math/Vector;)F

    move-result v4

    .line 284
    .local v4, "L2Sqr":F
    invoke-interface {v8, v6}, Lcom/badlogic/gdx/math/Vector;->dst2(Lcom/badlogic/gdx/math/Vector;)F

    move-result v5

    .line 285
    .local v5, "L3Sqr":F
    float-to-double v0, v3

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v2, v0

    .line 286
    .local v2, "L1":F
    add-float v17, v4, v3

    sub-float v17, v17, v5

    const/high16 v18, 0x40000000    # 2.0f

    mul-float v18, v18, v2

    div-float v15, v17, v18

    .line 287
    .local v15, "s":F
    sub-float v17, v2, v15

    div-float v17, v17, v2

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    invoke-static/range {v17 .. v19}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v16

    .line 288
    .local v16, "u":F
    int-to-float v0, v11

    move/from16 v17, v0

    add-float v17, v17, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/math/BSpline;->spanCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    return v17

    .line 267
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

    iget v0, v0, Lcom/badlogic/gdx/math/BSpline;->spanCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    goto :goto_0

    .line 277
    .restart local v9    # "dstNext2":F
    .restart local v10    # "dstPrev2":F
    .restart local v13    # "next":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .restart local v14    # "previous":Lcom/badlogic/gdx/math/Vector;, "TT;"
    :cond_1
    move-object v6, v14

    .line 278
    .restart local v6    # "P1":Lcom/badlogic/gdx/math/Vector;, "TT;"
    move-object v7, v12

    .line 279
    .restart local v7    # "P2":Lcom/badlogic/gdx/math/Vector;, "TT;"
    move-object/from16 v8, p1

    .line 280
    .restart local v8    # "P3":Lcom/badlogic/gdx/math/Vector;, "TT;"
    if-lez v11, :cond_2

    add-int/lit8 v11, v11, -0x1

    :goto_2
    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/math/BSpline;->spanCount:I

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
    .line 261
    .local p0, "this":Lcom/badlogic/gdx/math/BSpline;, "Lcom/badlogic/gdx/math/BSpline<TT;>;"
    .local p1, "in":Lcom/badlogic/gdx/math/Vector;, "TT;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/math/BSpline;->nearest(Lcom/badlogic/gdx/math/Vector;II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/math/BSpline;->approximate(Lcom/badlogic/gdx/math/Vector;I)F

    move-result v0

    return v0
.end method

.method public bridge synthetic approximate(Ljava/lang/Object;)F
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 22
    .local p0, "this":Lcom/badlogic/gdx/math/BSpline;, "Lcom/badlogic/gdx/math/BSpline<TT;>;"
    check-cast p1, Lcom/badlogic/gdx/math/Vector;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/BSpline;->approximate(Lcom/badlogic/gdx/math/Vector;)F

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
    .line 221
    .local p0, "this":Lcom/badlogic/gdx/math/BSpline;, "Lcom/badlogic/gdx/math/BSpline<TT;>;"
    .local p1, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    iget v1, p0, Lcom/badlogic/gdx/math/BSpline;->spanCount:I

    .line 222
    .local v1, "n":I
    int-to-float v3, v1

    mul-float v2, p2, v3

    .line 223
    .local v2, "u":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_0

    add-int/lit8 v0, v1, -0x1

    .line 224
    .local v0, "i":I
    :goto_0
    int-to-float v3, v0

    sub-float/2addr v2, v3

    .line 225
    invoke-virtual {p0, p1, v0, v2}, Lcom/badlogic/gdx/math/BSpline;->derivativeAt(Lcom/badlogic/gdx/math/Vector;IF)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    return-object v3

    .line 223
    .end local v0    # "i":I
    :cond_0
    float-to-int v0, v2

    goto :goto_0
.end method

.method public derivativeAt(Lcom/badlogic/gdx/math/Vector;IF)Lcom/badlogic/gdx/math/Vector;
    .locals 7
    .param p2, "span"    # I
    .param p3, "u"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IF)TT;"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "this":Lcom/badlogic/gdx/math/BSpline;, "Lcom/badlogic/gdx/math/BSpline<TT;>;"
    .local p1, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/math/BSpline;->continuous:Z

    if-eqz v0, :cond_0

    move v1, p2

    :goto_0
    iget-object v3, p0, Lcom/badlogic/gdx/math/BSpline;->controlPoints:[Lcom/badlogic/gdx/math/Vector;

    iget v4, p0, Lcom/badlogic/gdx/math/BSpline;->degree:I

    iget-boolean v5, p0, Lcom/badlogic/gdx/math/BSpline;->continuous:Z

    iget-object v6, p0, Lcom/badlogic/gdx/math/BSpline;->tmp:Lcom/badlogic/gdx/math/Vector;

    move-object v0, p1

    move v2, p3

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/math/BSpline;->derivative(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;IZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/math/BSpline;->degree:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int v1, p2, v0

    goto :goto_0
.end method

.method public bridge synthetic derivativeAt(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # F

    .prologue
    .line 22
    .local p0, "this":Lcom/badlogic/gdx/math/BSpline;, "Lcom/badlogic/gdx/math/BSpline<TT;>;"
    check-cast p1, Lcom/badlogic/gdx/math/Vector;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/BSpline;->derivativeAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

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
    .line 294
    .local p0, "this":Lcom/badlogic/gdx/math/BSpline;, "Lcom/badlogic/gdx/math/BSpline<TT;>;"
    .local p1, "v":Lcom/badlogic/gdx/math/Vector;, "TT;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/BSpline;->approximate(Lcom/badlogic/gdx/math/Vector;)F

    move-result v0

    return v0
.end method

.method public bridge synthetic locate(Ljava/lang/Object;)F
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 22
    .local p0, "this":Lcom/badlogic/gdx/math/BSpline;, "Lcom/badlogic/gdx/math/BSpline<TT;>;"
    check-cast p1, Lcom/badlogic/gdx/math/Vector;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/BSpline;->locate(Lcom/badlogic/gdx/math/Vector;)F

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
    .line 235
    .local p0, "this":Lcom/badlogic/gdx/math/BSpline;, "Lcom/badlogic/gdx/math/BSpline<TT;>;"
    .local p1, "in":Lcom/badlogic/gdx/math/Vector;, "TT;"
    const/4 v0, 0x0

    iget v1, p0, Lcom/badlogic/gdx/math/BSpline;->spanCount:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/math/BSpline;->nearest(Lcom/badlogic/gdx/math/Vector;II)I

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
    .line 240
    .local p0, "this":Lcom/badlogic/gdx/math/BSpline;, "Lcom/badlogic/gdx/math/BSpline<TT;>;"
    .local p1, "in":Lcom/badlogic/gdx/math/Vector;, "TT;"
    :goto_0
    if-gez p2, :cond_0

    .line 241
    iget v5, p0, Lcom/badlogic/gdx/math/BSpline;->spanCount:I

    add-int/2addr p2, v5

    goto :goto_0

    .line 242
    :cond_0
    iget v5, p0, Lcom/badlogic/gdx/math/BSpline;->spanCount:I

    rem-int v4, p2, v5

    .line 243
    .local v4, "result":I
    iget-object v5, p0, Lcom/badlogic/gdx/math/BSpline;->knots:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/math/Vector;

    invoke-interface {p1, v5}, Lcom/badlogic/gdx/math/Vector;->dst2(Lcom/badlogic/gdx/math/Vector;)F

    move-result v1

    .line 244
    .local v1, "dst":F
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    if-ge v2, p3, :cond_2

    .line 245
    add-int v5, p2, v2

    iget v6, p0, Lcom/badlogic/gdx/math/BSpline;->spanCount:I

    rem-int v3, v5, v6

    .line 246
    .local v3, "idx":I
    iget-object v5, p0, Lcom/badlogic/gdx/math/BSpline;->knots:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/math/Vector;

    invoke-interface {p1, v5}, Lcom/badlogic/gdx/math/Vector;->dst2(Lcom/badlogic/gdx/math/Vector;)F

    move-result v0

    .line 247
    .local v0, "d":F
    cmpg-float v5, v0, v1

    if-gez v5, :cond_1

    .line 248
    move v1, v0

    .line 249
    move v4, v3

    .line 244
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 252
    .end local v0    # "d":F
    .end local v3    # "idx":I
    :cond_2
    return v4
.end method

.method public set([Lcom/badlogic/gdx/math/Vector;IZ)Lcom/badlogic/gdx/math/BSpline;
    .locals 10
    .param p2, "degree"    # I
    .param p3, "continuous"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;IZ)",
            "Lcom/badlogic/gdx/math/BSpline;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/math/BSpline;, "Lcom/badlogic/gdx/math/BSpline<TT;>;"
    .local p1, "controlPoints":[Lcom/badlogic/gdx/math/Vector;, "[TT;"
    const/4 v9, 0x0

    .line 186
    iget-object v0, p0, Lcom/badlogic/gdx/math/BSpline;->tmp:Lcom/badlogic/gdx/math/Vector;

    if-nez v0, :cond_0

    aget-object v0, p1, v9

    invoke-interface {v0}, Lcom/badlogic/gdx/math/Vector;->cpy()Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/math/BSpline;->tmp:Lcom/badlogic/gdx/math/Vector;

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/math/BSpline;->tmp2:Lcom/badlogic/gdx/math/Vector;

    if-nez v0, :cond_1

    aget-object v0, p1, v9

    invoke-interface {v0}, Lcom/badlogic/gdx/math/Vector;->cpy()Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/math/BSpline;->tmp2:Lcom/badlogic/gdx/math/Vector;

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/math/BSpline;->tmp3:Lcom/badlogic/gdx/math/Vector;

    if-nez v0, :cond_2

    aget-object v0, p1, v9

    invoke-interface {v0}, Lcom/badlogic/gdx/math/Vector;->cpy()Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/math/BSpline;->tmp3:Lcom/badlogic/gdx/math/Vector;

    .line 189
    :cond_2
    iput-object p1, p0, Lcom/badlogic/gdx/math/BSpline;->controlPoints:[Lcom/badlogic/gdx/math/Vector;

    .line 190
    iput p2, p0, Lcom/badlogic/gdx/math/BSpline;->degree:I

    .line 191
    iput-boolean p3, p0, Lcom/badlogic/gdx/math/BSpline;->continuous:Z

    .line 192
    if-eqz p3, :cond_3

    array-length v0, p1

    :goto_0
    iput v0, p0, Lcom/badlogic/gdx/math/BSpline;->spanCount:I

    .line 193
    iget-object v0, p0, Lcom/badlogic/gdx/math/BSpline;->knots:Lcom/badlogic/gdx/utils/Array;

    if-nez v0, :cond_4

    .line 194
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    iget v1, p0, Lcom/badlogic/gdx/math/BSpline;->spanCount:I

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/math/BSpline;->knots:Lcom/badlogic/gdx/utils/Array;

    .line 199
    :goto_1
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    iget v0, p0, Lcom/badlogic/gdx/math/BSpline;->spanCount:I

    if-ge v7, v0, :cond_6

    .line 200
    iget-object v8, p0, Lcom/badlogic/gdx/math/BSpline;->knots:Lcom/badlogic/gdx/utils/Array;

    aget-object v0, p1, v9

    invoke-interface {v0}, Lcom/badlogic/gdx/math/Vector;->cpy()Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    if-eqz p3, :cond_5

    move v1, v7

    :goto_3
    const/4 v2, 0x0

    iget-object v6, p0, Lcom/badlogic/gdx/math/BSpline;->tmp:Lcom/badlogic/gdx/math/Vector;

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/math/BSpline;->calculate(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;IZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 199
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 192
    .end local v7    # "i":I
    :cond_3
    array-length v0, p1

    sub-int/2addr v0, p2

    goto :goto_0

    .line 196
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/math/BSpline;->knots:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 197
    iget-object v0, p0, Lcom/badlogic/gdx/math/BSpline;->knots:Lcom/badlogic/gdx/utils/Array;

    iget v1, p0, Lcom/badlogic/gdx/math/BSpline;->spanCount:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->ensureCapacity(I)[Ljava/lang/Object;

    goto :goto_1

    .line 200
    .restart local v7    # "i":I
    :cond_5
    int-to-float v1, v7

    const/high16 v2, 0x3f000000    # 0.5f

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_3

    .line 202
    :cond_6
    return-object p0
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
    .line 207
    .local p0, "this":Lcom/badlogic/gdx/math/BSpline;, "Lcom/badlogic/gdx/math/BSpline<TT;>;"
    .local p1, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    iget v1, p0, Lcom/badlogic/gdx/math/BSpline;->spanCount:I

    .line 208
    .local v1, "n":I
    int-to-float v3, v1

    mul-float v2, p2, v3

    .line 209
    .local v2, "u":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_0

    add-int/lit8 v0, v1, -0x1

    .line 210
    .local v0, "i":I
    :goto_0
    int-to-float v3, v0

    sub-float/2addr v2, v3

    .line 211
    invoke-virtual {p0, p1, v0, v2}, Lcom/badlogic/gdx/math/BSpline;->valueAt(Lcom/badlogic/gdx/math/Vector;IF)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    return-object v3

    .line 209
    .end local v0    # "i":I
    :cond_0
    float-to-int v0, v2

    goto :goto_0
.end method

.method public valueAt(Lcom/badlogic/gdx/math/Vector;IF)Lcom/badlogic/gdx/math/Vector;
    .locals 7
    .param p2, "span"    # I
    .param p3, "u"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IF)TT;"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, "this":Lcom/badlogic/gdx/math/BSpline;, "Lcom/badlogic/gdx/math/BSpline<TT;>;"
    .local p1, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    iget-boolean v0, p0, Lcom/badlogic/gdx/math/BSpline;->continuous:Z

    if-eqz v0, :cond_0

    move v1, p2

    :goto_0
    iget-object v3, p0, Lcom/badlogic/gdx/math/BSpline;->controlPoints:[Lcom/badlogic/gdx/math/Vector;

    iget v4, p0, Lcom/badlogic/gdx/math/BSpline;->degree:I

    iget-boolean v5, p0, Lcom/badlogic/gdx/math/BSpline;->continuous:Z

    iget-object v6, p0, Lcom/badlogic/gdx/math/BSpline;->tmp:Lcom/badlogic/gdx/math/Vector;

    move-object v0, p1

    move v2, p3

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/math/BSpline;->calculate(Lcom/badlogic/gdx/math/Vector;IF[Lcom/badlogic/gdx/math/Vector;IZLcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/math/BSpline;->degree:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int v1, p2, v0

    goto :goto_0
.end method

.method public bridge synthetic valueAt(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # F

    .prologue
    .line 22
    .local p0, "this":Lcom/badlogic/gdx/math/BSpline;, "Lcom/badlogic/gdx/math/BSpline<TT;>;"
    check-cast p1, Lcom/badlogic/gdx/math/Vector;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/BSpline;->valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    return-object v0
.end method
