.class public Lcom/badlogic/gdx/graphics/Color;
.super Ljava/lang/Object;
.source "Color.java"


# static fields
.field public static final BLACK:Lcom/badlogic/gdx/graphics/Color;

.field public static final BLUE:Lcom/badlogic/gdx/graphics/Color;

.field public static final CLEAR:Lcom/badlogic/gdx/graphics/Color;

.field public static final CYAN:Lcom/badlogic/gdx/graphics/Color;

.field public static final DARK_GRAY:Lcom/badlogic/gdx/graphics/Color;

.field public static final GRAY:Lcom/badlogic/gdx/graphics/Color;

.field public static final GREEN:Lcom/badlogic/gdx/graphics/Color;

.field public static final LIGHT_GRAY:Lcom/badlogic/gdx/graphics/Color;

.field public static final MAGENTA:Lcom/badlogic/gdx/graphics/Color;

.field public static final MAROON:Lcom/badlogic/gdx/graphics/Color;

.field public static final NAVY:Lcom/badlogic/gdx/graphics/Color;

.field public static final OLIVE:Lcom/badlogic/gdx/graphics/Color;

.field public static final ORANGE:Lcom/badlogic/gdx/graphics/Color;

.field public static final PINK:Lcom/badlogic/gdx/graphics/Color;

.field public static final PURPLE:Lcom/badlogic/gdx/graphics/Color;

.field public static final RED:Lcom/badlogic/gdx/graphics/Color;

.field public static final TEAL:Lcom/badlogic/gdx/graphics/Color;

.field public static final WHITE:Lcom/badlogic/gdx/graphics/Color;

.field public static final YELLOW:Lcom/badlogic/gdx/graphics/Color;

.field public static tmp:Lcom/badlogic/gdx/graphics/Color;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public a:F

.field public b:F

.field public g:F

.field public r:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/high16 v2, 0x3f400000    # 0.75f

    const/high16 v1, 0x3e800000    # 0.25f

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 26
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v4, v4, v4, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->CLEAR:Lcom/badlogic/gdx/graphics/Color;

    .line 27
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v3, v3, v3, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    .line 28
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v4, v4, v4, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    .line 29
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v3, v4, v4, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->RED:Lcom/badlogic/gdx/graphics/Color;

    .line 30
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v4, v3, v4, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->GREEN:Lcom/badlogic/gdx/graphics/Color;

    .line 31
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v4, v4, v3, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->BLUE:Lcom/badlogic/gdx/graphics/Color;

    .line 32
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v2, v2, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->LIGHT_GRAY:Lcom/badlogic/gdx/graphics/Color;

    .line 33
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v5, v5, v5, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->GRAY:Lcom/badlogic/gdx/graphics/Color;

    .line 34
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->DARK_GRAY:Lcom/badlogic/gdx/graphics/Color;

    .line 35
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f2e147b    # 0.68f

    const v2, 0x3f2e147b    # 0.68f

    invoke-direct {v0, v3, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->PINK:Lcom/badlogic/gdx/graphics/Color;

    .line 36
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f47ae14    # 0.78f

    invoke-direct {v0, v3, v1, v4, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->ORANGE:Lcom/badlogic/gdx/graphics/Color;

    .line 37
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v3, v3, v4, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->YELLOW:Lcom/badlogic/gdx/graphics/Color;

    .line 38
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v3, v4, v3, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->MAGENTA:Lcom/badlogic/gdx/graphics/Color;

    .line 39
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v4, v3, v3, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->CYAN:Lcom/badlogic/gdx/graphics/Color;

    .line 40
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v5, v5, v4, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->OLIVE:Lcom/badlogic/gdx/graphics/Color;

    .line 41
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v5, v4, v5, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->PURPLE:Lcom/badlogic/gdx/graphics/Color;

    .line 42
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v5, v4, v4, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->MAROON:Lcom/badlogic/gdx/graphics/Color;

    .line 43
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v4, v5, v5, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->TEAL:Lcom/badlogic/gdx/graphics/Color;

    .line 44
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v4, v4, v5, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->NAVY:Lcom/badlogic/gdx/graphics/Color;

    .line 46
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/Color;->tmp:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 68
    iput p2, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 69
    iput p3, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 70
    iput p4, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 71
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Color;->clamp()Lcom/badlogic/gdx/graphics/Color;

    .line 72
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "rgba8888"    # I

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p0, p1}, Lcom/badlogic/gdx/graphics/Color;->rgba8888ToColor(Lcom/badlogic/gdx/graphics/Color;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 0
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 79
    return-void
.end method

.method public static alpha(F)I
    .locals 1
    .param p0, "alpha"    # F

    .prologue
    .line 356
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method public static argb8888(FFFF)I
    .locals 3
    .param p0, "a"    # F
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F

    .prologue
    const/high16 v2, 0x437f0000    # 255.0f

    .line 380
    mul-float v0, p0, v2

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    mul-float v1, p1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    mul-float v1, p2, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    mul-float v1, p3, v2

    float-to-int v1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static argb8888(Lcom/badlogic/gdx/graphics/Color;)I
    .locals 3
    .param p0, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    const/high16 v2, 0x437f0000    # 255.0f

    .line 400
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static argb8888ToColor(Lcom/badlogic/gdx/graphics/Color;I)V
    .locals 2
    .param p0, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p1, "value"    # I

    .prologue
    const/high16 v1, 0x437f0000    # 255.0f

    .line 455
    const/high16 v0, -0x1000000

    and-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0x18

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 456
    const/high16 v0, 0xff0000

    and-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 457
    const v0, 0xff00

    and-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 458
    and-int/lit16 v0, p1, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 459
    return-void
.end method

.method public static luminanceAlpha(FF)I
    .locals 2
    .param p0, "luminance"    # F
    .param p1, "alpha"    # F

    .prologue
    const/high16 v1, 0x437f0000    # 255.0f

    .line 360
    mul-float v0, p0, v1

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x8

    mul-float/2addr v1, p1

    float-to-int v1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static rgb565(FFF)I
    .locals 3
    .param p0, "r"    # F
    .param p1, "g"    # F
    .param p2, "b"    # F

    .prologue
    const/high16 v2, 0x41f80000    # 31.0f

    .line 364
    mul-float v0, p0, v2

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0xb

    const/high16 v1, 0x427c0000    # 63.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v0, v1

    mul-float v1, p2, v2

    float-to-int v1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static rgb565(Lcom/badlogic/gdx/graphics/Color;)I
    .locals 4
    .param p0, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    const/high16 v3, 0x41f80000    # 31.0f

    .line 384
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0xb

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    const/high16 v2, 0x427c0000    # 63.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static rgb565ToColor(Lcom/badlogic/gdx/graphics/Color;I)V
    .locals 3
    .param p0, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p1, "value"    # I

    .prologue
    const/high16 v2, 0x41f80000    # 31.0f

    .line 409
    const v0, 0xf800

    and-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0xb

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 410
    and-int/lit16 v0, p1, 0x7e0

    ushr-int/lit8 v0, v0, 0x5

    int-to-float v0, v0

    const/high16 v1, 0x427c0000    # 63.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 411
    and-int/lit8 v0, p1, 0x1f

    ushr-int/lit8 v0, v0, 0x0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 412
    return-void
.end method

.method public static rgb888(FFF)I
    .locals 3
    .param p0, "r"    # F
    .param p1, "g"    # F
    .param p2, "b"    # F

    .prologue
    const/high16 v2, 0x437f0000    # 255.0f

    .line 372
    mul-float v0, p0, v2

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x10

    mul-float v1, p1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    mul-float v1, p2, v2

    float-to-int v1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static rgb888(Lcom/badlogic/gdx/graphics/Color;)I
    .locals 3
    .param p0, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    const/high16 v2, 0x437f0000    # 255.0f

    .line 392
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static rgb888ToColor(Lcom/badlogic/gdx/graphics/Color;I)V
    .locals 2
    .param p0, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p1, "value"    # I

    .prologue
    const/high16 v1, 0x437f0000    # 255.0f

    .line 432
    const/high16 v0, 0xff0000

    and-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 433
    const v0, 0xff00

    and-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 434
    and-int/lit16 v0, p1, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 435
    return-void
.end method

.method public static rgba4444(FFFF)I
    .locals 3
    .param p0, "r"    # F
    .param p1, "g"    # F
    .param p2, "b"    # F
    .param p3, "a"    # F

    .prologue
    const/high16 v2, 0x41700000    # 15.0f

    .line 368
    mul-float v0, p0, v2

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0xc

    mul-float v1, p1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    mul-float v1, p2, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    mul-float v1, p3, v2

    float-to-int v1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static rgba4444(Lcom/badlogic/gdx/graphics/Color;)I
    .locals 3
    .param p0, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    const/high16 v2, 0x41700000    # 15.0f

    .line 388
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0xc

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static rgba4444ToColor(Lcom/badlogic/gdx/graphics/Color;I)V
    .locals 2
    .param p0, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p1, "value"    # I

    .prologue
    const/high16 v1, 0x41700000    # 15.0f

    .line 420
    const v0, 0xf000

    and-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0xc

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 421
    and-int/lit16 v0, p1, 0xf00

    ushr-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 422
    and-int/lit16 v0, p1, 0xf0

    ushr-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 423
    and-int/lit8 v0, p1, 0xf

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 424
    return-void
.end method

.method public static rgba8888(FFFF)I
    .locals 3
    .param p0, "r"    # F
    .param p1, "g"    # F
    .param p2, "b"    # F
    .param p3, "a"    # F

    .prologue
    const/high16 v2, 0x437f0000    # 255.0f

    .line 376
    mul-float v0, p0, v2

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    mul-float v1, p1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    mul-float v1, p2, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    mul-float v1, p3, v2

    float-to-int v1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static rgba8888(Lcom/badlogic/gdx/graphics/Color;)I
    .locals 3
    .param p0, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    const/high16 v2, 0x437f0000    # 255.0f

    .line 396
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static rgba8888ToColor(Lcom/badlogic/gdx/graphics/Color;I)V
    .locals 2
    .param p0, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p1, "value"    # I

    .prologue
    const/high16 v1, 0x437f0000    # 255.0f

    .line 443
    const/high16 v0, -0x1000000

    and-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0x18

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 444
    const/high16 v0, 0xff0000

    and-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 445
    const v0, 0xff00

    and-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0x8

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 446
    and-int/lit16 v0, p1, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 447
    return-void
.end method

.method public static toFloatBits(FFFF)F
    .locals 4
    .param p0, "r"    # F
    .param p1, "g"    # F
    .param p2, "b"    # F
    .param p3, "a"    # F

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 340
    mul-float v1, v3, p3

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    mul-float v2, v3, p2

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    mul-float v2, v3, p1

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    mul-float v2, v3, p0

    float-to-int v2, v2

    or-int v0, v1, v2

    .line 341
    .local v0, "color":I
    invoke-static {v0}, Lcom/badlogic/gdx/utils/NumberUtils;->intToFloatColor(I)F

    move-result v1

    return v1
.end method

.method public static toFloatBits(IIII)F
    .locals 4
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .param p3, "a"    # I

    .prologue
    .line 331
    shl-int/lit8 v2, p3, 0x18

    shl-int/lit8 v3, p2, 0x10

    or-int/2addr v2, v3

    shl-int/lit8 v3, p1, 0x8

    or-int/2addr v2, v3

    or-int v0, v2, p0

    .line 332
    .local v0, "color":I
    invoke-static {v0}, Lcom/badlogic/gdx/utils/NumberUtils;->intToFloatColor(I)F

    move-result v1

    .line 333
    .local v1, "floatColor":F
    return v1
.end method

.method public static toIntBits(IIII)I
    .locals 2
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .param p3, "a"    # I

    .prologue
    .line 352
    shl-int/lit8 v0, p3, 0x18

    shl-int/lit8 v1, p2, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;
    .locals 10
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x4

    const/4 v5, 0x2

    const/16 v6, 0x10

    const/high16 v9, 0x437f0000    # 255.0f

    .line 315
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 316
    .local v3, "r":I
    invoke-virtual {p0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 317
    .local v2, "g":I
    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 318
    .local v1, "b":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    const/16 v0, 0xff

    .line 319
    .local v0, "a":I
    :goto_0
    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    int-to-float v5, v3

    div-float/2addr v5, v9

    int-to-float v6, v2

    div-float/2addr v6, v9

    int-to-float v7, v1

    div-float/2addr v7, v9

    int-to-float v8, v0

    div-float/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    return-object v4

    .line 318
    .end local v0    # "a":I
    :cond_0
    const/16 v4, 0x8

    invoke-virtual {p0, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public add(FFFF)Lcom/badlogic/gdx/graphics/Color;
    .locals 1
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    .line 195
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 196
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 197
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    add-float/2addr v0, p3

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 198
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    add-float/2addr v0, p4

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 199
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Color;->clamp()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public add(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;
    .locals 2
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 121
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 122
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 123
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 124
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 125
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Color;->clamp()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public clamp()Lcom/badlogic/gdx/graphics/Color;
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 143
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 144
    iput v1, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 147
    :cond_0
    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 148
    iput v1, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 151
    :cond_1
    :goto_1
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 152
    iput v1, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 155
    :cond_2
    :goto_2
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    .line 156
    iput v1, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 158
    :cond_3
    :goto_3
    return-object p0

    .line 145
    :cond_4
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iput v2, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    goto :goto_0

    .line 149
    :cond_5
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iput v2, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    goto :goto_1

    .line 153
    :cond_6
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    iput v2, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    goto :goto_2

    .line 157
    :cond_7
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    iput v2, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    goto :goto_3
.end method

.method public cpy()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .prologue
    .line 470
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 273
    if-ne p0, p1, :cond_1

    .line 276
    :cond_0
    :goto_0
    return v1

    .line 274
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 275
    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    .line 276
    .local v0, "color":Lcom/badlogic/gdx/graphics/Color;
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Color;->toIntBits()I

    move-result v3

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toIntBits()I

    move-result v4

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 281
    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v0

    .line 282
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 283
    mul-int/lit8 v3, v0, 0x1f

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-static {v2}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 284
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-static {v1}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntBits(F)I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 285
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 281
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 282
    goto :goto_1

    :cond_3
    move v2, v1

    .line 283
    goto :goto_2
.end method

.method public lerp(FFFFF)Lcom/badlogic/gdx/graphics/Color;
    .locals 2
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F
    .param p5, "t"    # F

    .prologue
    .line 256
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sub-float v1, p1, v1

    mul-float/2addr v1, p5

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 257
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    sub-float v1, p2, v1

    mul-float/2addr v1, p5

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 258
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    sub-float v1, p3, v1

    mul-float/2addr v1, p5

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 259
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    sub-float v1, p4, v1

    mul-float/2addr v1, p5

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 260
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Color;->clamp()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public lerp(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/graphics/Color;
    .locals 3
    .param p1, "target"    # Lcom/badlogic/gdx/graphics/Color;
    .param p2, "t"    # F

    .prologue
    .line 240
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 241
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 242
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 243
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 244
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Color;->clamp()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public mul(F)Lcom/badlogic/gdx/graphics/Color;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 109
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 110
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 111
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 112
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 113
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Color;->clamp()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public mul(FFFF)Lcom/badlogic/gdx/graphics/Color;
    .locals 1
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    .line 227
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 228
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 229
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v0, p3

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 230
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v0, p4

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 231
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Color;->clamp()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public mul(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;
    .locals 2
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 97
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 98
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 99
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 100
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 101
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Color;->clamp()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public premultiplyAlpha()Lcom/badlogic/gdx/graphics/Color;
    .locals 2

    .prologue
    .line 265
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 266
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 267
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 268
    return-object p0
.end method

.method public set(FFFF)Lcom/badlogic/gdx/graphics/Color;
    .locals 1
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    .line 170
    iput p1, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 171
    iput p2, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 172
    iput p3, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 173
    iput p4, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 174
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Color;->clamp()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public set(I)Lcom/badlogic/gdx/graphics/Color;
    .locals 0
    .param p1, "rgba"    # I

    .prologue
    .line 182
    invoke-static {p0, p1}, Lcom/badlogic/gdx/graphics/Color;->rgba8888ToColor(Lcom/badlogic/gdx/graphics/Color;I)V

    .line 183
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;
    .locals 1
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 85
    iget v0, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 86
    iget v0, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 87
    iget v0, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 88
    iget v0, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 89
    return-object p0
.end method

.method public sub(FFFF)Lcom/badlogic/gdx/graphics/Color;
    .locals 1
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    .line 211
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 212
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    sub-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 213
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    sub-float/2addr v0, p3

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 214
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    sub-float/2addr v0, p4

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 215
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Color;->clamp()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public sub(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;
    .locals 2
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 133
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 134
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 135
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 136
    iget v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 137
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Color;->clamp()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public tmp()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .prologue
    .line 465
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->tmp:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public toFloatBits()F
    .locals 4

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 292
    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    or-int v0, v1, v2

    .line 293
    .local v0, "color":I
    invoke-static {v0}, Lcom/badlogic/gdx/utils/NumberUtils;->intToFloatColor(I)F

    move-result v1

    return v1
.end method

.method public toIntBits()I
    .locals 4

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 299
    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    or-int v0, v1, v2

    .line 300
    .local v0, "color":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 305
    iget v1, p0, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    or-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "value":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 309
    :cond_0
    return-object v0
.end method
