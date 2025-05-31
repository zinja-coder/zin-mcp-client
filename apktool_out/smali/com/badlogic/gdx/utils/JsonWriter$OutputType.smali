.class public final enum Lcom/badlogic/gdx/utils/JsonWriter$OutputType;
.super Ljava/lang/Enum;
.source "JsonWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/JsonWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OutputType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/badlogic/gdx/utils/JsonWriter$OutputType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

.field public static final enum javascript:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

.field private static javascriptPattern:Ljava/util/regex/Pattern;

.field public static final enum json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

.field public static final enum minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

.field private static minimalNamePattern:Ljava/util/regex/Pattern;

.field private static minimalValuePattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 171
    new-instance v0, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    const-string v1, "json"

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    .line 173
    new-instance v0, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    const-string v1, "javascript"

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->javascript:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    .line 184
    new-instance v0, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    const-string v1, "minimal"

    invoke-direct {v0, v1, v4}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    .line 169
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    sget-object v1, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->json:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->javascript:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->$VALUES:[Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    .line 186
    const-string v0, "^[a-zA-Z_$][a-zA-Z_$0-9]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->javascriptPattern:Ljava/util/regex/Pattern;

    .line 187
    const-string v0, "^[^\":,}/ ][^:]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimalNamePattern:Ljava/util/regex/Pattern;

    .line 188
    const-string v0, "^[^\":,{\\[\\]/ ][^}\\],]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimalValuePattern:Ljava/util/regex/Pattern;

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
    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonWriter$OutputType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 169
    const-class v0, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/utils/JsonWriter$OutputType;
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->$VALUES:[Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    return-object v0
.end method


# virtual methods
.method public quoteName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    .line 203
    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r"

    const-string v2, "\\r"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\t"

    const-string v2, "\\t"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 204
    sget-object v0, Lcom/badlogic/gdx/utils/JsonWriter$1;->$SwitchMap$com$badlogic$gdx$utils$JsonWriter$OutputType:[I

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 210
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\\\""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "value":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p1

    .line 206
    .restart local p1    # "value":Ljava/lang/String;
    :pswitch_0
    const-string v0, "//"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "/*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimalNamePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    :cond_2
    :pswitch_1
    sget-object v0, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->javascriptPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public quoteValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    const/16 v5, 0x22

    .line 191
    if-eqz p1, :cond_0

    instance-of v2, p1, Ljava/lang/Number;

    if-nez v2, :cond_0

    instance-of v2, p1, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 199
    :cond_1
    :goto_0
    return-object v1

    .line 192
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\"

    const-string v4, "\\\\"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\r"

    const-string v4, "\\r"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v4, "\\n"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\t"

    const-string v4, "\\t"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "string":Ljava/lang/String;
    sget-object v2, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimal:Lcom/badlogic/gdx/utils/JsonWriter$OutputType;

    if-ne p0, v2, :cond_3

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "/*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 196
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 197
    .local v0, "length":I
    if-lez v0, :cond_3

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_3

    sget-object v2, Lcom/badlogic/gdx/utils/JsonWriter$OutputType;->minimalValuePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_1

    .line 199
    .end local v0    # "length":I
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    const-string v4, "\\\""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method
