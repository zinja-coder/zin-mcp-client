.class public final Lcom/badlogic/gdx/graphics/Colors;
.super Ljava/lang/Object;
.source "Colors.java"


# static fields
.field private static final map:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/Colors;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 29
    invoke-static {}, Lcom/badlogic/gdx/graphics/Colors;->reset()V

    .line 30
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    sget-object v0, Lcom/badlogic/gdx/graphics/Colors;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public static getColors()Lcom/badlogic/gdx/utils/ObjectMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    sget-object v0, Lcom/badlogic/gdx/graphics/Colors;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    return-object v0
.end method

.method public static put(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 53
    sget-object v0, Lcom/badlogic/gdx/graphics/Colors;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public static reset()V
    .locals 3

    .prologue
    .line 58
    sget-object v0, Lcom/badlogic/gdx/graphics/Colors;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    .line 59
    sget-object v0, Lcom/badlogic/gdx/graphics/Colors;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    const-string v1, "CLEAR"

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->CLEAR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/badlogic/gdx/graphics/Colors;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    const-string v1, "WHITE"

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/badlogic/gdx/graphics/Colors;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    const-string v1, "BLACK"

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/badlogic/gdx/graphics/Colors;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    const-string v1, "RED"

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->RED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/badlogic/gdx/graphics/Colors;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    const-string v1, "GREEN"

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->GREEN:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/badlogic/gdx/graphics/Colors;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    const-string v1, "BLUE"

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->BLUE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/badlogic/gdx/graphics/Colors;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    const-string v1, "LIGHT_GRAY"

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->LIGHT_GRAY:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/badlogic/gdx/graphics/Colors;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    const-string v1, "GRAY"

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->GRAY:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/badlogic/gdx/graphics/Colors;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    const-string v1, "DARK_GRAY"

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->DARK_GRAY:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/badlogic/gdx/graphics/Colors;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    const-string v1, "PINK"

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->PINK:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/badlogic/gdx/graphics/Colors;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    const-string v1, "ORANGE"

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->ORANGE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/badlogic/gdx/graphics/Colors;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    const-string v1, "YELLOW"

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->YELLOW:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/badlogic/gdx/graphics/Colors;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    const-string v1, "MAGENTA"

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->MAGENTA:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/badlogic/gdx/graphics/Colors;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    const-string v1, "CYAN"

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->CYAN:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/badlogic/gdx/graphics/Colors;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    const-string v1, "OLIVE"

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->OLIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/badlogic/gdx/graphics/Colors;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    const-string v1, "PURPLE"

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->PURPLE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/badlogic/gdx/graphics/Colors;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    const-string v1, "MAROON"

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->MAROON:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/badlogic/gdx/graphics/Colors;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    const-string v1, "TEAL"

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->TEAL:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/badlogic/gdx/graphics/Colors;->map:Lcom/badlogic/gdx/utils/ObjectMap;

    const-string v1, "NAVY"

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->NAVY:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void
.end method
