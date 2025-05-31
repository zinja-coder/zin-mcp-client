.class public Lcom/badlogic/gdx/math/Bezier;
.super Ljava/lang/Object;
.source "Bezier.java"

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
.field public points:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;"
        }
    .end annotation
.end field

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
    .locals 1

    .prologue
    .line 122
    .local p0, "this":Lcom/badlogic/gdx/math/Bezier;, "Lcom/badlogic/gdx/math/Bezier<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/Bezier;->points:Lcom/badlogic/gdx/utils/Array;

    .line 123
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/Array;II)V
    .locals 1
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;II)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lcom/badlogic/gdx/math/Bezier;, "Lcom/badlogic/gdx/math/Bezier<TT;>;"
    .local p1, "points":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/Bezier;->points:Lcom/badlogic/gdx/utils/Array;

    .line 134
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/math/Bezier;->set(Lcom/badlogic/gdx/utils/Array;II)Lcom/badlogic/gdx/math/Bezier;

    .line 135
    return-void
.end method

.method public varargs constructor <init>([Lcom/badlogic/gdx/math/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lcom/badlogic/gdx/math/Bezier;, "Lcom/badlogic/gdx/math/Bezier<TT;>;"
    .local p1, "points":[Lcom/badlogic/gdx/math/Vector;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/Bezier;->points:Lcom/badlogic/gdx/utils/Array;

    .line 126
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Bezier;->set([Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Bezier;

    .line 127
    return-void
.end method

.method public constructor <init>([Lcom/badlogic/gdx/math/Vector;II)V
    .locals 1
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;II)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Lcom/badlogic/gdx/math/Bezier;, "Lcom/badlogic/gdx/math/Bezier<TT;>;"
    .local p1, "points":[Lcom/badlogic/gdx/math/Vector;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/math/Bezier;->points:Lcom/badlogic/gdx/utils/Array;

    .line 130
    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/math/Bezier;->set([Lcom/badlogic/gdx/math/Vector;II)Lcom/badlogic/gdx/math/Bezier;

    .line 131
    return-void
.end method

.method public static cubic(Lcom/badlogic/gdx/math/Vector;FLcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 7
    .param p1, "t"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/badlogic/gdx/math/Vector",
            "<TT;>;>(TT;FTT;TT;TT;TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p2, "p0":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p3, "p1":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p4, "p2":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p5, "p3":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p6, "tmp":Lcom/badlogic/gdx/math/Vector;, "TT;"
    const/high16 v6, 0x40400000    # 3.0f

    .line 92
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v0, v3, p1

    .line 93
    .local v0, "dt":F
    mul-float v1, v0, v0

    .line 94
    .local v1, "dt2":F
    mul-float v2, p1, p1

    .line 95
    .local v2, "t2":F
    invoke-interface {p0, p2}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    mul-float v4, v1, v0

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    invoke-interface {p6, p3}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    mul-float v5, v6, v1

    mul-float/2addr v5, p1

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    invoke-interface {p6, p4}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    mul-float v5, v6, v0

    mul-float/2addr v5, v2

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    invoke-interface {p6, p5}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    mul-float v5, v2, p1

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    return-object v3
.end method

.method public static cubic_derivative(Lcom/badlogic/gdx/math/Vector;FLcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 8
    .param p1, "t"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/badlogic/gdx/math/Vector",
            "<TT;>;>(TT;FTT;TT;TT;TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p2, "p0":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p3, "p1":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p4, "p2":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p5, "p3":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p6, "tmp":Lcom/badlogic/gdx/math/Vector;, "TT;"
    const/high16 v7, 0x40400000    # 3.0f

    .line 111
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v0, v3, p1

    .line 112
    .local v0, "dt":F
    mul-float v1, v0, v0

    .line 113
    .local v1, "dt2":F
    mul-float v2, p1, p1

    .line 114
    .local v2, "t2":F
    invoke-interface {p0, p3}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    invoke-interface {v3, p2}, Lcom/badlogic/gdx/math/Vector;->sub(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    mul-float v4, v1, v7

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    invoke-interface {p6, p4}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    invoke-interface {v4, p3}, Lcom/badlogic/gdx/math/Vector;->sub(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    mul-float v5, v0, p1

    const/high16 v6, 0x40c00000    # 6.0f

    mul-float/2addr v5, v6

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    invoke-interface {p6, p5}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    invoke-interface {v4, p4}, Lcom/badlogic/gdx/math/Vector;->sub(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    mul-float v5, v2, v7

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v3

    return-object v3
.end method

.method public static linear(Lcom/badlogic/gdx/math/Vector;FLcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 2
    .param p1, "t"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/badlogic/gdx/math/Vector",
            "<TT;>;>(TT;FTT;TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p2, "p0":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p3, "p1":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p4, "tmp":Lcom/badlogic/gdx/math/Vector;, "TT;"
    invoke-interface {p0, p2}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    invoke-interface {p4, p3}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    return-object v0
.end method

.method public static linear_derivative(Lcom/badlogic/gdx/math/Vector;FLcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 1
    .param p1, "t"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/badlogic/gdx/math/Vector",
            "<TT;>;>(TT;FTT;TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p2, "p0":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p3, "p1":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p4, "tmp":Lcom/badlogic/gdx/math/Vector;, "TT;"
    invoke-interface {p0, p3}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/badlogic/gdx/math/Vector;->sub(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    return-object v0
.end method

.method public static quadratic(Lcom/badlogic/gdx/math/Vector;FLcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 4
    .param p1, "t"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/badlogic/gdx/math/Vector",
            "<TT;>;>(TT;FTT;TT;TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p2, "p0":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p3, "p1":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p4, "p2":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p5, "tmp":Lcom/badlogic/gdx/math/Vector;, "TT;"
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, p1

    .line 62
    .local v0, "dt":F
    invoke-interface {p0, p2}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    mul-float v2, v0, v0

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    invoke-interface {p5, p3}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v0

    mul-float/2addr v3, p1

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    invoke-interface {p5, p4}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v2

    mul-float v3, p1, p1

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    return-object v1
.end method

.method public static quadratic_derivative(Lcom/badlogic/gdx/math/Vector;FLcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;
    .locals 4
    .param p1, "t"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/badlogic/gdx/math/Vector",
            "<TT;>;>(TT;FTT;TT;TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p2, "p0":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p3, "p1":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p4, "p2":Lcom/badlogic/gdx/math/Vector;, "TT;"
    .local p5, "tmp":Lcom/badlogic/gdx/math/Vector;, "TT;"
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 76
    sub-float v0, v2, p1

    .line 77
    .local v0, "dt":F
    invoke-interface {p0, p3}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/badlogic/gdx/math/Vector;->sub(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    sub-float/2addr v2, p1

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    invoke-interface {p5, p4}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v2

    invoke-interface {v2, p3}, Lcom/badlogic/gdx/math/Vector;->sub(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/math/Vector;->scl(F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/math/Vector;->add(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public approxLength(I)F
    .locals 6
    .param p1, "samples"    # I

    .prologue
    .line 205
    .local p0, "this":Lcom/badlogic/gdx/math/Bezier;, "Lcom/badlogic/gdx/math/Bezier<TT;>;"
    const/4 v1, 0x0

    .line 206
    .local v1, "tempLength":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 207
    iget-object v2, p0, Lcom/badlogic/gdx/math/Bezier;->tmp2:Lcom/badlogic/gdx/math/Vector;

    iget-object v3, p0, Lcom/badlogic/gdx/math/Bezier;->tmp3:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/math/Vector;->set(Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    .line 208
    iget-object v2, p0, Lcom/badlogic/gdx/math/Bezier;->tmp3:Lcom/badlogic/gdx/math/Vector;

    int-to-float v3, v0

    int-to-float v4, p1

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/math/Bezier;->valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    .line 209
    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/math/Bezier;->tmp2:Lcom/badlogic/gdx/math/Vector;

    iget-object v3, p0, Lcom/badlogic/gdx/math/Bezier;->tmp3:Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/math/Vector;->dst(Lcom/badlogic/gdx/math/Vector;)F

    move-result v2

    add-float/2addr v1, v2

    .line 206
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_1
    return v1
.end method

.method public approximate(Lcom/badlogic/gdx/math/Vector;)F
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)F"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, "this":Lcom/badlogic/gdx/math/Bezier;, "Lcom/badlogic/gdx/math/Bezier<TT;>;"
    .local p1, "v":Lcom/badlogic/gdx/math/Vector;, "TT;"
    iget-object v8, p0, Lcom/badlogic/gdx/math/Bezier;->points:Lcom/badlogic/gdx/utils/Array;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/math/Vector;

    .line 187
    .local v4, "p1":Lcom/badlogic/gdx/math/Vector;, "TT;"
    iget-object v8, p0, Lcom/badlogic/gdx/math/Bezier;->points:Lcom/badlogic/gdx/utils/Array;

    iget-object v9, p0, Lcom/badlogic/gdx/math/Bezier;->points:Lcom/badlogic/gdx/utils/Array;

    iget v9, v9, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/math/Vector;

    .line 188
    .local v5, "p2":Lcom/badlogic/gdx/math/Vector;, "TT;"
    move-object v6, p1

    .line 189
    .local v6, "p3":Lcom/badlogic/gdx/math/Vector;, "TT;"
    invoke-interface {v4, v5}, Lcom/badlogic/gdx/math/Vector;->dst2(Lcom/badlogic/gdx/math/Vector;)F

    move-result v1

    .line 190
    .local v1, "l1Sqr":F
    invoke-interface {v6, v5}, Lcom/badlogic/gdx/math/Vector;->dst2(Lcom/badlogic/gdx/math/Vector;)F

    move-result v2

    .line 191
    .local v2, "l2Sqr":F
    invoke-interface {v6, v4}, Lcom/badlogic/gdx/math/Vector;->dst2(Lcom/badlogic/gdx/math/Vector;)F

    move-result v3

    .line 192
    .local v3, "l3Sqr":F
    float-to-double v8, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v0, v8

    .line 193
    .local v0, "l1":F
    add-float v8, v2, v1

    sub-float/2addr v8, v3

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v9, v0

    div-float v7, v8, v9

    .line 194
    .local v7, "s":F
    sub-float v8, v0, v7

    div-float/2addr v8, v0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v8, v9, v10}, Lcom/badlogic/gdx/math/MathUtils;->clamp(FFF)F

    move-result v8

    return v8
.end method

.method public bridge synthetic approximate(Ljava/lang/Object;)F
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 24
    .local p0, "this":Lcom/badlogic/gdx/math/Bezier;, "Lcom/badlogic/gdx/math/Bezier<TT;>;"
    check-cast p1, Lcom/badlogic/gdx/math/Vector;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Bezier;->approximate(Lcom/badlogic/gdx/math/Vector;)F

    move-result v0

    return v0
.end method

.method public derivativeAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;
    .locals 8
    .param p2, "t"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/math/Bezier;, "Lcom/badlogic/gdx/math/Bezier<TT;>;"
    .local p1, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 174
    iget-object v0, p0, Lcom/badlogic/gdx/math/Bezier;->points:Lcom/badlogic/gdx/utils/Array;

    iget v7, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 175
    .local v7, "n":I
    if-ne v7, v4, :cond_1

    .line 176
    iget-object v0, p0, Lcom/badlogic/gdx/math/Bezier;->points:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector;

    iget-object v1, p0, Lcom/badlogic/gdx/math/Bezier;->points:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/math/Vector;

    iget-object v2, p0, Lcom/badlogic/gdx/math/Bezier;->tmp:Lcom/badlogic/gdx/math/Vector;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/badlogic/gdx/math/Bezier;->linear_derivative(Lcom/badlogic/gdx/math/Vector;FLcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    .line 180
    :cond_0
    :goto_0
    return-object p1

    .line 177
    :cond_1
    if-ne v7, v5, :cond_2

    .line 178
    iget-object v0, p0, Lcom/badlogic/gdx/math/Bezier;->points:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/math/Vector;

    iget-object v0, p0, Lcom/badlogic/gdx/math/Bezier;->points:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector;

    iget-object v0, p0, Lcom/badlogic/gdx/math/Bezier;->points:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/math/Vector;

    iget-object v5, p0, Lcom/badlogic/gdx/math/Bezier;->tmp:Lcom/badlogic/gdx/math/Vector;

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/math/Bezier;->quadratic_derivative(Lcom/badlogic/gdx/math/Vector;FLcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    goto :goto_0

    .line 179
    :cond_2
    const/4 v0, 0x4

    if-ne v7, v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Bezier;->points:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/math/Vector;

    iget-object v0, p0, Lcom/badlogic/gdx/math/Bezier;->points:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector;

    iget-object v0, p0, Lcom/badlogic/gdx/math/Bezier;->points:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/math/Vector;

    iget-object v0, p0, Lcom/badlogic/gdx/math/Bezier;->points:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/math/Vector;

    iget-object v6, p0, Lcom/badlogic/gdx/math/Bezier;->tmp:Lcom/badlogic/gdx/math/Vector;

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/math/Bezier;->cubic_derivative(Lcom/badlogic/gdx/math/Vector;FLcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    goto :goto_0
.end method

.method public bridge synthetic derivativeAt(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # F

    .prologue
    .line 24
    .local p0, "this":Lcom/badlogic/gdx/math/Bezier;, "Lcom/badlogic/gdx/math/Bezier<TT;>;"
    check-cast p1, Lcom/badlogic/gdx/math/Vector;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Bezier;->derivativeAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

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
    .line 200
    .local p0, "this":Lcom/badlogic/gdx/math/Bezier;, "Lcom/badlogic/gdx/math/Bezier<TT;>;"
    .local p1, "v":Lcom/badlogic/gdx/math/Vector;, "TT;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Bezier;->approximate(Lcom/badlogic/gdx/math/Vector;)F

    move-result v0

    return v0
.end method

.method public bridge synthetic locate(Ljava/lang/Object;)F
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 24
    .local p0, "this":Lcom/badlogic/gdx/math/Bezier;, "Lcom/badlogic/gdx/math/Bezier<TT;>;"
    check-cast p1, Lcom/badlogic/gdx/math/Vector;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/math/Bezier;->locate(Lcom/badlogic/gdx/math/Vector;)F

    move-result v0

    return v0
.end method

.method public set(Lcom/badlogic/gdx/utils/Array;II)Lcom/badlogic/gdx/math/Bezier;
    .locals 2
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<TT;>;II)",
            "Lcom/badlogic/gdx/math/Bezier;"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lcom/badlogic/gdx/math/Bezier;, "Lcom/badlogic/gdx/math/Bezier<TT;>;"
    .local p1, "points":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<TT;>;"
    const/4 v0, 0x2

    if-lt p3, v0, :cond_0

    const/4 v0, 0x4

    if-le p3, v0, :cond_1

    .line 154
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Only first, second and third degree Bezier curves are supported."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/math/Bezier;->tmp:Lcom/badlogic/gdx/math/Vector;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector;

    invoke-interface {v0}, Lcom/badlogic/gdx/math/Vector;->cpy()Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/math/Bezier;->tmp:Lcom/badlogic/gdx/math/Vector;

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/math/Bezier;->points:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 157
    iget-object v0, p0, Lcom/badlogic/gdx/math/Bezier;->points:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;II)V

    .line 158
    return-object p0
.end method

.method public varargs set([Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Bezier;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Lcom/badlogic/gdx/math/Bezier;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lcom/badlogic/gdx/math/Bezier;, "Lcom/badlogic/gdx/math/Bezier<TT;>;"
    .local p1, "points":[Lcom/badlogic/gdx/math/Vector;, "[TT;"
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/math/Bezier;->set([Lcom/badlogic/gdx/math/Vector;II)Lcom/badlogic/gdx/math/Bezier;

    move-result-object v0

    return-object v0
.end method

.method public set([Lcom/badlogic/gdx/math/Vector;II)Lcom/badlogic/gdx/math/Bezier;
    .locals 2
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;II)",
            "Lcom/badlogic/gdx/math/Bezier;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/math/Bezier;, "Lcom/badlogic/gdx/math/Bezier<TT;>;"
    .local p1, "points":[Lcom/badlogic/gdx/math/Vector;, "[TT;"
    const/4 v1, 0x0

    .line 142
    const/4 v0, 0x2

    if-lt p3, v0, :cond_0

    const/4 v0, 0x4

    if-le p3, v0, :cond_1

    .line 143
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Only first, second and third degree Bezier curves are supported."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/math/Bezier;->tmp:Lcom/badlogic/gdx/math/Vector;

    if-nez v0, :cond_2

    aget-object v0, p1, v1

    invoke-interface {v0}, Lcom/badlogic/gdx/math/Vector;->cpy()Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/math/Bezier;->tmp:Lcom/badlogic/gdx/math/Vector;

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/math/Bezier;->tmp2:Lcom/badlogic/gdx/math/Vector;

    if-nez v0, :cond_3

    aget-object v0, p1, v1

    invoke-interface {v0}, Lcom/badlogic/gdx/math/Vector;->cpy()Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/math/Bezier;->tmp2:Lcom/badlogic/gdx/math/Vector;

    .line 146
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/math/Bezier;->tmp3:Lcom/badlogic/gdx/math/Vector;

    if-nez v0, :cond_4

    aget-object v0, p1, v1

    invoke-interface {v0}, Lcom/badlogic/gdx/math/Vector;->cpy()Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/math/Bezier;->tmp3:Lcom/badlogic/gdx/math/Vector;

    .line 147
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/math/Bezier;->points:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 148
    iget-object v0, p0, Lcom/badlogic/gdx/math/Bezier;->points:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/utils/Array;->addAll([Ljava/lang/Object;II)V

    .line 149
    return-object p0
.end method

.method public valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;
    .locals 8
    .param p2, "t"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/badlogic/gdx/math/Bezier;, "Lcom/badlogic/gdx/math/Bezier<TT;>;"
    .local p1, "out":Lcom/badlogic/gdx/math/Vector;, "TT;"
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 163
    iget-object v0, p0, Lcom/badlogic/gdx/math/Bezier;->points:Lcom/badlogic/gdx/utils/Array;

    iget v7, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 164
    .local v7, "n":I
    if-ne v7, v4, :cond_1

    .line 165
    iget-object v0, p0, Lcom/badlogic/gdx/math/Bezier;->points:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector;

    iget-object v1, p0, Lcom/badlogic/gdx/math/Bezier;->points:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/math/Vector;

    iget-object v2, p0, Lcom/badlogic/gdx/math/Bezier;->tmp:Lcom/badlogic/gdx/math/Vector;

    invoke-static {p1, p2, v0, v1, v2}, Lcom/badlogic/gdx/math/Bezier;->linear(Lcom/badlogic/gdx/math/Vector;FLcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    .line 169
    :cond_0
    :goto_0
    return-object p1

    .line 166
    :cond_1
    if-ne v7, v5, :cond_2

    .line 167
    iget-object v0, p0, Lcom/badlogic/gdx/math/Bezier;->points:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/math/Vector;

    iget-object v0, p0, Lcom/badlogic/gdx/math/Bezier;->points:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector;

    iget-object v0, p0, Lcom/badlogic/gdx/math/Bezier;->points:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/math/Vector;

    iget-object v5, p0, Lcom/badlogic/gdx/math/Bezier;->tmp:Lcom/badlogic/gdx/math/Vector;

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v5}, Lcom/badlogic/gdx/math/Bezier;->quadratic(Lcom/badlogic/gdx/math/Vector;FLcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    goto :goto_0

    .line 168
    :cond_2
    const/4 v0, 0x4

    if-ne v7, v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/math/Bezier;->points:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/math/Vector;

    iget-object v0, p0, Lcom/badlogic/gdx/math/Bezier;->points:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/math/Vector;

    iget-object v0, p0, Lcom/badlogic/gdx/math/Bezier;->points:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/math/Vector;

    iget-object v0, p0, Lcom/badlogic/gdx/math/Bezier;->points:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/math/Vector;

    iget-object v6, p0, Lcom/badlogic/gdx/math/Bezier;->tmp:Lcom/badlogic/gdx/math/Vector;

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v6}, Lcom/badlogic/gdx/math/Bezier;->cubic(Lcom/badlogic/gdx/math/Vector;FLcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/math/Vector;)Lcom/badlogic/gdx/math/Vector;

    goto :goto_0
.end method

.method public bridge synthetic valueAt(Ljava/lang/Object;F)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # F

    .prologue
    .line 24
    .local p0, "this":Lcom/badlogic/gdx/math/Bezier;, "Lcom/badlogic/gdx/math/Bezier<TT;>;"
    check-cast p1, Lcom/badlogic/gdx/math/Vector;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/math/Bezier;->valueAt(Lcom/badlogic/gdx/math/Vector;F)Lcom/badlogic/gdx/math/Vector;

    move-result-object v0

    return-object v0
.end method
