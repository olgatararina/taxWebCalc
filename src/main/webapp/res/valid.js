$().ready(function () {
    $("#registration").validate({
        errorClass: "errorTxt",
        errorElement: "div",
        errorMessagePosition: "top",
        rules: {
            proceeds: {
                required: true,
                digits: true
            },
            nIncome: {
                required: true,
                digits: true
            },
            job: "required",
            privileges: "required",
            oparent: "required",
            kids: {
                required: true,
                digits: true
            },
            dkids: {
                required: true,
                digits: true
            },
            dependent: {
                required: true,
                digits: true
            },
            iexpenses: {
                required: true,
                digits: true
            },
            edexpenses: {
                required: true,
                digits: true
            },
            cexpenses: {
                required: true,
                digits: true
            },
            bexpenses: {
                required: true,
                digits: true
            }
        },
        messages: {
            proceeds: {
                required: "Это поле обязательно для заполнения",
                digits: "Введите цифры, пожалуйста"
            },
            nIncome: {
                required: "Это поле обязательно для заполнения",
                digits: "Введите цифры, пожалуйста"
            },
            job: "Выберите один из вариантов",
            privileges: "Выберите один из вариантов",
            oparent: "Выберите один из вариантов",
            kids: {
                required: "Это поле обязательно для заполнения",
                digits: "Введите цифры, пожалуйста"
            },
            dkids: {
                required: "Это поле обязательно для заполнения",
                digits: "Введите цифры, пожалуйста"
            },
            dependent: {
                required: "Это поле обязательно для заполнения",
                digits: "Введите цифры, пожалуйста"
            },
            iexpenses: {
                required: "Это поле обязательно для заполнения",
                digits: "Введите цифры, пожалуйста"
            },
            edexpenses: {
                required: "Это поле обязательно для заполнения",
                digits: "Введите цифры, пожалуйста"
            },
            cexpenses: {
                required: "Это поле обязательно для заполнения",
                digits: "Введите цифры, пожалуйста"
            },
            bexpenses: {
                required: "Это поле обязательно для заполнения",
                digits: "Введите цифры, пожалуйста"
            }
        },
        errorPlacement: function (error, element) {
            var placement = $(element).data('error');
            if (placement) {
                $(placement).append(error);
            } else {
                error.insertAfter(element);
            }
        }

    });

});
