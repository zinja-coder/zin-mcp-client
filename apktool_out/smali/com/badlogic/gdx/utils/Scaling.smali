.class public final enum Lcom/badlogic/gdx/utils/Scaling;
.super Ljava/lang/Enum;
.source "Scaling.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/Scaling$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/badlogic/gdx/utils/Scaling;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/utils/Scaling;

.field public static final enum fill:Lcom/badlogic/gdx/utils/Scaling;

.field public static final enum fillX:Lcom/badlogic/gdx/utils/Scaling;

.field public static final enum fillY:Lcom/badlogic/gdx/utils/Scaling;

.field public static final enum fit:Lcom/badlogic/gdx/utils/Scaling;

.field public static final enum none:Lcom/badlogic/gdx/utils/Scaling;

.field public static final enum stretch:Lcom/badlogic/gdx/utils/Scaling;

.field public static final enum stretchX:Lcom/badlogic/gdx/utils/Scaling;

.field public static final enum stretchY:Lcom/badlogic/gdx/utils/Scaling;

.field private static final temp:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v0, Lcom/badlogic/gdx/utils/Scaling;

    const-string v1, "fit"

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/utils/Scaling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/Scaling;->fit:Lcom/badlogic/gdx/utils/Scaling;

    .line 29
    new-instance v0, Lcom/badlogic/gdx/utils/Scaling;

    const-string v1, "fill"

    invoke-direct {v0, v1, v4}, Lcom/badlogic/gdx/utils/Scaling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/Scaling;->fill:Lcom/badlogic/gdx/utils/Scaling;

    .line 32
    new-instance v0, Lcom/badlogic/gdx/utils/Scaling;

    const-string v1, "fillX"

    invoke-direct {v0, v1, v5}, Lcom/badlogic/gdx/utils/Scaling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/Scaling;->fillX:Lcom/badlogic/gdx/utils/Scaling;

    .line 35
    new-instance v0, Lcom/badlogic/gdx/utils/Scaling;

    const-string v1, "fillY"

    invoke-direct {v0, v1, v6}, Lcom/badlogic/gdx/utils/Scaling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/Scaling;->fillY:Lcom/badlogic/gdx/utils/Scaling;

    .line 37
    new-instance v0, Lcom/badlogic/gdx/utils/Scaling;

    const-string v1, "stretch"

    invoke-direct {v0, v1, v7}, Lcom/badlogic/gdx/utils/Scaling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/Scaling;->stretch:Lcom/badlogic/gdx/utils/Scaling;

    .line 40
    new-instance v0, Lcom/badlogic/gdx/utils/Scaling;

    const-string v1, "stretchX"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Scaling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/Scaling;->stretchX:Lcom/badlogic/gdx/utils/Scaling;

    .line 43
    new-instance v0, Lcom/badlogic/gdx/utils/Scaling;

    const-string v1, "stretchY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Scaling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/Scaling;->stretchY:Lcom/badlogic/gdx/utils/Scaling;

    .line 45
    new-instance v0, Lcom/badlogic/gdx/utils/Scaling;

    const-string v1, "none"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Scaling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/Scaling;->none:Lcom/badlogic/gdx/utils/Scaling;

    .line 23
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/badlogic/gdx/utils/Scaling;

    sget-object v1, Lcom/badlogic/gdx/utils/Scaling;->fit:Lcom/badlogic/gdx/utils/Scaling;

    aput-object v1, v0, v3

    sget-object v1, Lcom/badlogic/gdx/utils/Scaling;->fill:Lcom/badlogic/gdx/utils/Scaling;

    aput-object v1, v0, v4

    sget-object v1, Lcom/badlogic/gdx/utils/Scaling;->fillX:Lcom/badlogic/gdx/utils/Scaling;

    aput-object v1, v0, v5

    sget-object v1, Lcom/badlogic/gdx/utils/Scaling;->fillY:Lcom/badlogic/gdx/utils/Scaling;

    aput-object v1, v0, v6

    sget-object v1, Lcom/badlogic/gdx/utils/Scaling;->stretch:Lcom/badlogic/gdx/utils/Scaling;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/badlogic/gdx/utils/Scaling;->stretchX:Lcom/badlogic/gdx/utils/Scaling;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/badlogic/gdx/utils/Scaling;->stretchY:Lcom/badlogic/gdx/utils/Scaling;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/badlogic/gdx/utils/Scaling;->none:Lcom/badlogic/gdx/utils/Scaling;

    aput-object v2, v0, v1

    sput-object v0, Lcom/badlogic/gdx/utils/Scaling;->$VALUES:[Lcom/badlogic/gdx/utils/Scaling;

    .line 47
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 96
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Scaling;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/badlogic/gdx/utils/Scaling;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Scaling;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/utils/Scaling;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/badlogic/gdx/utils/Scaling;->$VALUES:[Lcom/badlogic/gdx/utils/Scaling;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/utils/Scaling;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/utils/Scaling;

    return-object v0
.end method


# virtual methods
.method public apply(FFFF)Lcom/badlogic/gdx/math/Vector2;
    .locals 5
    .param p1, "sourceWidth"    # F
    .param p2, "sourceHeight"    # F
    .param p3, "targetWidth"    # F
    .param p4, "targetHeight"    # F

    .prologue
    .line 52
    sget-object v3, Lcom/badlogic/gdx/utils/Scaling$1;->$SwitchMap$com$badlogic$gdx$utils$Scaling:[I

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Scaling;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 98
    :goto_0
    sget-object v3, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    return-object v3

    .line 54
    :pswitch_0
    div-float v2, p4, p3

    .line 55
    .local v2, "targetRatio":F
    div-float v1, p2, p1

    .line 56
    .local v1, "sourceRatio":F
    cmpl-float v3, v2, v1

    if-lez v3, :cond_0

    div-float v0, p3, p1

    .line 57
    .local v0, "scale":F
    :goto_1
    sget-object v3, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    mul-float v4, p1, v0

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 58
    sget-object v3, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    mul-float v4, p2, v0

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_0

    .line 56
    .end local v0    # "scale":F
    :cond_0
    div-float v0, p4, p2

    goto :goto_1

    .line 62
    .end local v1    # "sourceRatio":F
    .end local v2    # "targetRatio":F
    :pswitch_1
    div-float v2, p4, p3

    .line 63
    .restart local v2    # "targetRatio":F
    div-float v1, p2, p1

    .line 64
    .restart local v1    # "sourceRatio":F
    cmpg-float v3, v2, v1

    if-gez v3, :cond_1

    div-float v0, p3, p1

    .line 65
    .restart local v0    # "scale":F
    :goto_2
    sget-object v3, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    mul-float v4, p1, v0

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 66
    sget-object v3, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    mul-float v4, p2, v0

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_0

    .line 64
    .end local v0    # "scale":F
    :cond_1
    div-float v0, p4, p2

    goto :goto_2

    .line 70
    .end local v1    # "sourceRatio":F
    .end local v2    # "targetRatio":F
    :pswitch_2
    div-float v0, p3, p1

    .line 71
    .restart local v0    # "scale":F
    sget-object v3, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    mul-float v4, p1, v0

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 72
    sget-object v3, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    mul-float v4, p2, v0

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_0

    .line 76
    .end local v0    # "scale":F
    :pswitch_3
    div-float v0, p4, p2

    .line 77
    .restart local v0    # "scale":F
    sget-object v3, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    mul-float v4, p1, v0

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 78
    sget-object v3, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    mul-float v4, p2, v0

    iput v4, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_0

    .line 82
    .end local v0    # "scale":F
    :pswitch_4
    sget-object v3, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    iput p3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 83
    sget-object v3, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    iput p4, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_0

    .line 86
    :pswitch_5
    sget-object v3, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    iput p3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 87
    sget-object v3, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    iput p2, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_0

    .line 90
    :pswitch_6
    sget-object v3, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 91
    sget-object v3, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    iput p4, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_0

    .line 94
    :pswitch_7
    sget-object v3, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 95
    sget-object v3, Lcom/badlogic/gdx/utils/Scaling;->temp:Lcom/badlogic/gdx/math/Vector2;

    iput p2, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
