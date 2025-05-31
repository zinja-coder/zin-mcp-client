.class public final enum Lde/fgerbig/spacepeng/components/Sprite$Layer;
.super Ljava/lang/Enum;
.source "Sprite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/fgerbig/spacepeng/components/Sprite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Layer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lde/fgerbig/spacepeng/components/Sprite$Layer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/fgerbig/spacepeng/components/Sprite$Layer;

.field public static final enum ACTORS:Lde/fgerbig/spacepeng/components/Sprite$Layer;

.field public static final enum BACKGROUND:Lde/fgerbig/spacepeng/components/Sprite$Layer;

.field public static final enum DEFAULT:Lde/fgerbig/spacepeng/components/Sprite$Layer;

.field public static final enum EFFECTS:Lde/fgerbig/spacepeng/components/Sprite$Layer;

.field public static final enum OVERLAYS:Lde/fgerbig/spacepeng/components/Sprite$Layer;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lde/fgerbig/spacepeng/components/Sprite$Layer;

    const-string v1, "BACKGROUND"

    invoke-direct {v0, v1, v2}, Lde/fgerbig/spacepeng/components/Sprite$Layer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/fgerbig/spacepeng/components/Sprite$Layer;->BACKGROUND:Lde/fgerbig/spacepeng/components/Sprite$Layer;

    .line 28
    new-instance v0, Lde/fgerbig/spacepeng/components/Sprite$Layer;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v3}, Lde/fgerbig/spacepeng/components/Sprite$Layer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/fgerbig/spacepeng/components/Sprite$Layer;->DEFAULT:Lde/fgerbig/spacepeng/components/Sprite$Layer;

    .line 29
    new-instance v0, Lde/fgerbig/spacepeng/components/Sprite$Layer;

    const-string v1, "EFFECTS"

    invoke-direct {v0, v1, v4}, Lde/fgerbig/spacepeng/components/Sprite$Layer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/fgerbig/spacepeng/components/Sprite$Layer;->EFFECTS:Lde/fgerbig/spacepeng/components/Sprite$Layer;

    .line 30
    new-instance v0, Lde/fgerbig/spacepeng/components/Sprite$Layer;

    const-string v1, "ACTORS"

    invoke-direct {v0, v1, v5}, Lde/fgerbig/spacepeng/components/Sprite$Layer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/fgerbig/spacepeng/components/Sprite$Layer;->ACTORS:Lde/fgerbig/spacepeng/components/Sprite$Layer;

    .line 31
    new-instance v0, Lde/fgerbig/spacepeng/components/Sprite$Layer;

    const-string v1, "OVERLAYS"

    invoke-direct {v0, v1, v6}, Lde/fgerbig/spacepeng/components/Sprite$Layer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/fgerbig/spacepeng/components/Sprite$Layer;->OVERLAYS:Lde/fgerbig/spacepeng/components/Sprite$Layer;

    .line 26
    const/4 v0, 0x5

    new-array v0, v0, [Lde/fgerbig/spacepeng/components/Sprite$Layer;

    sget-object v1, Lde/fgerbig/spacepeng/components/Sprite$Layer;->BACKGROUND:Lde/fgerbig/spacepeng/components/Sprite$Layer;

    aput-object v1, v0, v2

    sget-object v1, Lde/fgerbig/spacepeng/components/Sprite$Layer;->DEFAULT:Lde/fgerbig/spacepeng/components/Sprite$Layer;

    aput-object v1, v0, v3

    sget-object v1, Lde/fgerbig/spacepeng/components/Sprite$Layer;->EFFECTS:Lde/fgerbig/spacepeng/components/Sprite$Layer;

    aput-object v1, v0, v4

    sget-object v1, Lde/fgerbig/spacepeng/components/Sprite$Layer;->ACTORS:Lde/fgerbig/spacepeng/components/Sprite$Layer;

    aput-object v1, v0, v5

    sget-object v1, Lde/fgerbig/spacepeng/components/Sprite$Layer;->OVERLAYS:Lde/fgerbig/spacepeng/components/Sprite$Layer;

    aput-object v1, v0, v6

    sput-object v0, Lde/fgerbig/spacepeng/components/Sprite$Layer;->$VALUES:[Lde/fgerbig/spacepeng/components/Sprite$Layer;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lde/fgerbig/spacepeng/components/Sprite$Layer;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lde/fgerbig/spacepeng/components/Sprite$Layer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lde/fgerbig/spacepeng/components/Sprite$Layer;

    return-object v0
.end method

.method public static values()[Lde/fgerbig/spacepeng/components/Sprite$Layer;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lde/fgerbig/spacepeng/components/Sprite$Layer;->$VALUES:[Lde/fgerbig/spacepeng/components/Sprite$Layer;

    invoke-virtual {v0}, [Lde/fgerbig/spacepeng/components/Sprite$Layer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/fgerbig/spacepeng/components/Sprite$Layer;

    return-object v0
.end method
