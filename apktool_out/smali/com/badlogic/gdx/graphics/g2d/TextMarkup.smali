.class Lcom/badlogic/gdx/graphics/g2d/TextMarkup;
.super Ljava/lang/Object;
.source "TextMarkup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/TextMarkup$ColorChunk;
    }
.end annotation


# static fields
.field private static app:Lcom/badlogic/gdx/Application;

.field private static colorChunkPool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool",
            "<",
            "Lcom/badlogic/gdx/graphics/g2d/TextMarkup$ColorChunk;",
            ">;"
        }
    .end annotation
.end field

.field private static final tempColor:Lcom/badlogic/gdx/graphics/Color;

.field private static final tempColorBuffer:Lcom/badlogic/gdx/utils/StringBuilder;


# instance fields
.field private colorChunks:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g2d/TextMarkup$ColorChunk;",
            ">;"
        }
    .end annotation
.end field

.field private currentColorStack:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field private defaultColor:Lcom/badlogic/gdx/graphics/Color;

.field private lastColor:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->tempColor:Lcom/badlogic/gdx/graphics/Color;

    .line 34
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->tempColorBuffer:Lcom/badlogic/gdx/utils/StringBuilder;

    .line 96
    const/4 v0, 0x0

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->app:Lcom/badlogic/gdx/Application;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->colorChunks:Lcom/badlogic/gdx/utils/Array;

    .line 99
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->currentColorStack:Lcom/badlogic/gdx/utils/Array;

    .line 100
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->lastColor:Lcom/badlogic/gdx/graphics/Color;

    .line 101
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->defaultColor:Lcom/badlogic/gdx/graphics/Color;

    .line 104
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->app:Lcom/badlogic/gdx/Application;

    if-eq v0, v1, :cond_0

    .line 105
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup$1;

    const/16 v1, 0x20

    invoke-direct {v0, p0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextMarkup$1;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextMarkup;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->colorChunkPool:Lcom/badlogic/gdx/utils/Pool;

    .line 110
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->app:Lcom/badlogic/gdx/Application;

    .line 112
    :cond_0
    return-void
.end method

.method private setDefaultColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1
    .param p1, "defaultColor"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->currentColorStack:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_0

    .line 168
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->defaultColor:Lcom/badlogic/gdx/graphics/Color;

    .line 169
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->lastColor:Lcom/badlogic/gdx/graphics/Color;

    .line 171
    :cond_0
    return-void
.end method


# virtual methods
.method public beginChunk(Lcom/badlogic/gdx/graphics/Color;I)V
    .locals 3
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p2, "start"    # I

    .prologue
    .line 115
    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->colorChunkPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup$ColorChunk;

    .line 116
    .local v0, "newChunk":Lcom/badlogic/gdx/graphics/g2d/TextMarkup$ColorChunk;
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup$ColorChunk;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 117
    iput p2, v0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup$ColorChunk;->start:I

    .line 118
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->colorChunks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 119
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->currentColorStack:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->lastColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 120
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup$ColorChunk;->color:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->lastColor:Lcom/badlogic/gdx/graphics/Color;

    .line 121
    return-void
.end method

.method public clear()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 152
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->colorChunks:Lcom/badlogic/gdx/utils/Array;

    iget v1, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 153
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 154
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->colorChunkPool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->colorChunks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 155
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->colorChunks:Lcom/badlogic/gdx/utils/Array;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/badlogic/gdx/utils/Array;->set(ILjava/lang/Object;)V

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->colorChunks:Lcom/badlogic/gdx/utils/Array;

    iput v4, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    .line 158
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->currentColorStack:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 159
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->defaultColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v2, v4}, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->setDefaultChunk(Lcom/badlogic/gdx/graphics/Color;I)V

    .line 160
    return-void
.end method

.method public endChunk(I)V
    .locals 3
    .param p1, "start"    # I

    .prologue
    .line 124
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->currentColorStack:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->currentColorStack:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->lastColor:Lcom/badlogic/gdx/graphics/Color;

    .line 126
    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->colorChunkPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup$ColorChunk;

    .line 127
    .local v0, "newChunk":Lcom/badlogic/gdx/graphics/g2d/TextMarkup$ColorChunk;
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup$ColorChunk;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->lastColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 128
    iput p1, v0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup$ColorChunk;->start:I

    .line 129
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->colorChunks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 131
    .end local v0    # "newChunk":Lcom/badlogic/gdx/graphics/g2d/TextMarkup$ColorChunk;
    :cond_0
    return-void
.end method

.method public getLastColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->lastColor:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public parseColorTag(Ljava/lang/CharSequence;III)I
    .locals 10
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "nomarkupStart"    # I
    .param p3, "start"    # I
    .param p4, "end"    # I

    .prologue
    const/16 v9, 0x5d

    const/4 v6, -0x1

    .line 44
    if-ge p3, p4, :cond_0

    .line 45
    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->tempColor:Lcom/badlogic/gdx/graphics/Color;

    .line 46
    .local v3, "hexColor":Lcom/badlogic/gdx/graphics/Color;
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x23

    if-ne v7, v8, :cond_7

    .line 48
    const/4 v1, 0x0

    .line 49
    .local v1, "colorInt":I
    add-int/lit8 v4, p3, 0x1

    .local v4, "i":I
    :goto_0
    if-ge v4, p4, :cond_0

    .line 50
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 51
    .local v0, "ch":C
    if-ne v0, v9, :cond_4

    .line 52
    add-int/lit8 v7, p3, 0x2

    if-lt v4, v7, :cond_0

    add-int/lit8 v7, p3, 0x9

    if-le v4, v7, :cond_1

    .line 92
    .end local v0    # "ch":C
    .end local v1    # "colorInt":I
    .end local v3    # "hexColor":Lcom/badlogic/gdx/graphics/Color;
    .end local v4    # "i":I
    :cond_0
    :goto_1
    return v6

    .line 53
    .restart local v0    # "ch":C
    .restart local v1    # "colorInt":I
    .restart local v3    # "hexColor":Lcom/badlogic/gdx/graphics/Color;
    .restart local v4    # "i":I
    :cond_1
    add-int/lit8 v6, p3, 0x7

    if-gt v4, v6, :cond_3

    .line 54
    invoke-static {v3, v1}, Lcom/badlogic/gdx/graphics/Color;->rgb888ToColor(Lcom/badlogic/gdx/graphics/Color;I)V

    .line 55
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v3, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 59
    :goto_2
    if-ltz p2, :cond_2

    invoke-virtual {p0, v3, p2}, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->beginChunk(Lcom/badlogic/gdx/graphics/Color;I)V

    .line 60
    :cond_2
    sub-int v6, v4, p3

    goto :goto_1

    .line 57
    :cond_3
    invoke-static {v3, v1}, Lcom/badlogic/gdx/graphics/Color;->rgba8888ToColor(Lcom/badlogic/gdx/graphics/Color;I)V

    goto :goto_2

    .line 62
    :cond_4
    const/16 v7, 0x30

    if-lt v0, v7, :cond_5

    const/16 v7, 0x39

    if-gt v0, v7, :cond_5

    .line 63
    mul-int/lit8 v7, v1, 0x10

    add-int/lit8 v8, v0, -0x30

    add-int v1, v7, v8

    .line 49
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 64
    :cond_5
    const/16 v7, 0x61

    if-lt v0, v7, :cond_6

    const/16 v7, 0x66

    if-gt v0, v7, :cond_6

    .line 65
    mul-int/lit8 v7, v1, 0x10

    add-int/lit8 v8, v0, -0x57

    add-int v1, v7, v8

    goto :goto_3

    .line 66
    :cond_6
    const/16 v7, 0x41

    if-lt v0, v7, :cond_0

    const/16 v7, 0x46

    if-gt v0, v7, :cond_0

    .line 67
    mul-int/lit8 v7, v1, 0x10

    add-int/lit8 v8, v0, -0x37

    add-int v1, v7, v8

    goto :goto_3

    .line 73
    .end local v0    # "ch":C
    .end local v1    # "colorInt":I
    .end local v4    # "i":I
    :cond_7
    sget-object v7, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->tempColorBuffer:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    .line 74
    move v4, p3

    .restart local v4    # "i":I
    :goto_4
    if-ge v4, p4, :cond_0

    .line 75
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 76
    .restart local v0    # "ch":C
    if-ne v0, v9, :cond_a

    .line 77
    if-ne v4, p3, :cond_9

    .line 78
    if-ltz p2, :cond_8

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->endChunk(I)V

    .line 85
    :cond_8
    :goto_5
    sub-int v6, v4, p3

    goto :goto_1

    .line 80
    :cond_9
    sget-object v7, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->tempColorBuffer:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "colorString":Ljava/lang/String;
    invoke-static {v2}, Lcom/badlogic/gdx/graphics/Colors;->get(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    .line 82
    .local v5, "newColor":Lcom/badlogic/gdx/graphics/Color;
    if-eqz v5, :cond_0

    .line 83
    if-ltz p2, :cond_8

    invoke-virtual {p0, v5, p2}, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->beginChunk(Lcom/badlogic/gdx/graphics/Color;I)V

    goto :goto_5

    .line 87
    .end local v2    # "colorString":Ljava/lang/String;
    .end local v5    # "newColor":Lcom/badlogic/gdx/graphics/Color;
    :cond_a
    sget-object v7, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->tempColorBuffer:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 74
    add-int/lit8 v4, v4, 0x1

    goto :goto_4
.end method

.method public setDefaultChunk(FI)V
    .locals 1
    .param p1, "color"    # F
    .param p2, "start"    # I

    .prologue
    .line 174
    invoke-static {p1}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntColor(F)I

    move-result v0

    .line 175
    .local v0, "abgr":I
    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->setDefaultChunk(II)V

    .line 176
    return-void
.end method

.method public setDefaultChunk(II)V
    .locals 4
    .param p1, "abgr"    # I
    .param p2, "start"    # I

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    .line 179
    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->colorChunkPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/TextMarkup$ColorChunk;

    .line 180
    .local v1, "newChunk":Lcom/badlogic/gdx/graphics/g2d/TextMarkup$ColorChunk;
    iget-object v0, v1, Lcom/badlogic/gdx/graphics/g2d/TextMarkup$ColorChunk;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 181
    .local v0, "color":Lcom/badlogic/gdx/graphics/Color;
    and-int/lit16 v2, p1, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    .line 182
    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    .line 183
    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    .line 184
    ushr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    div-float/2addr v2, v3

    iput v2, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    .line 185
    iput p2, v1, Lcom/badlogic/gdx/graphics/g2d/TextMarkup$ColorChunk;->start:I

    .line 186
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->colorChunks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 187
    iget-object v2, v1, Lcom/badlogic/gdx/graphics/g2d/TextMarkup$ColorChunk;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v2}, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->setDefaultColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 188
    return-void
.end method

.method public setDefaultChunk(Lcom/badlogic/gdx/graphics/Color;I)V
    .locals 2
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;
    .param p2, "start"    # I

    .prologue
    .line 191
    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->colorChunkPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup$ColorChunk;

    .line 192
    .local v0, "newChunk":Lcom/badlogic/gdx/graphics/g2d/TextMarkup$ColorChunk;
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup$ColorChunk;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 193
    iput p2, v0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup$ColorChunk;->start:I

    .line 194
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->colorChunks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 195
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup$ColorChunk;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->setDefaultColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 196
    return-void
.end method

.method public tint(Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 8
    .param p1, "cache"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;
    .param p2, "tint"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 134
    const/4 v2, 0x0

    .line 135
    .local v2, "current":I
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->tempColor:Lcom/badlogic/gdx/graphics/Color;

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->defaultColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/badlogic/gdx/graphics/Color;->mul(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v3

    .line 136
    .local v3, "floatColor":F
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->colorChunks:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/TextMarkup$ColorChunk;

    .line 137
    .local v1, "chunk":Lcom/badlogic/gdx/graphics/g2d/TextMarkup$ColorChunk;
    iget v5, v1, Lcom/badlogic/gdx/graphics/g2d/TextMarkup$ColorChunk;->start:I

    .line 138
    .local v5, "next":I
    if-ge v2, v5, :cond_0

    .line 139
    invoke-virtual {p1, v3, v2, v5}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setColors(FII)V

    .line 140
    move v2, v5

    .line 142
    :cond_0
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/TextMarkup;->tempColor:Lcom/badlogic/gdx/graphics/Color;

    iget-object v7, v1, Lcom/badlogic/gdx/graphics/g2d/TextMarkup$ColorChunk;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/badlogic/gdx/graphics/Color;->mul(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v3

    .line 143
    goto :goto_0

    .line 144
    .end local v1    # "chunk":Lcom/badlogic/gdx/graphics/g2d/TextMarkup$ColorChunk;
    .end local v5    # "next":I
    :cond_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getCharsCount()I

    move-result v0

    .line 145
    .local v0, "charsCount":I
    if-ge v2, v0, :cond_2

    .line 146
    invoke-virtual {p1, v3, v2, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setColors(FII)V

    .line 148
    :cond_2
    return-void
.end method
